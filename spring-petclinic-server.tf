module "spring_petclinic_server" {
  source         = "terraform-aws-modules/ec2-instance/aws"
  version        = "2.19.0"
  name           = "Spring PetClinic"
  instance_count = 1
  ami            = var.ubuntu_ami
  instance_type  = var.spring_petclinic_instance_type
  key_name       = module.key_pair.key_pair_key_name
  subnet_id      = module.vpc.private_subnets[0]
  user_data      = file("spring-petclinic-server-init.sh")

  vpc_security_group_ids      = [module.spring_petclinic_security_group.security_group_id]
  associate_public_ip_address = false

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
