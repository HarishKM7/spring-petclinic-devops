module "spring_petclinic_security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.3.0"

  name        = "spring_petclinic_security_group"
  description = "Spring PetClinic security group."

  vpc_id              = module.vpc.vpc_id
  ingress_cidr_blocks = ["${module.jenkins_server.private_ip[0]}/32"]
  ingress_rules       = ["ssh-tcp", "http-8080-tcp"]
  egress_rules        = ["all-all"]

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
