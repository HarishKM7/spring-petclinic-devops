resource "tls_private_key" "this" {
  algorithm = "RSA"
}

resource "local_file" "private_key" {
  filename          = "spring-petclinic.pem"
  file_permission   = "0400"
  sensitive_content = tls_private_key.this.private_key_pem
}

module "key_pair" {
  source  = "terraform-aws-modules/key-pair/aws"
  version = "1.0.0"

  key_name   = "spring-petclinic"
  public_key = tls_private_key.this.public_key_openssh

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
