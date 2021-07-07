module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.2.0"
  name    = "spring-petclinic"

  cidr            = "172.20.0.0/16"
  azs             = ["ap-south-1a"]
  public_subnets  = ["172.20.10.0/24"]
  private_subnets = ["172.20.20.0/24"]

  create_igw             = true
  enable_nat_gateway     = true
  single_nat_gateway     = true
  one_nat_gateway_per_az = false

  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
