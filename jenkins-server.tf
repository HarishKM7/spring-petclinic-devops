module "jenkins_server" {
  source         = "terraform-aws-modules/ec2-instance/aws"
  version        = "2.19.0"
  name           = "Jenkins"
  instance_count = 1
  ami            = var.ubuntu_ami
  instance_type  = var.jenkins_instance_type
  key_name       = module.key_pair.key_pair_key_name
  subnet_id      = module.vpc.public_subnets[0]
  user_data      = file("jenkins-server-init.sh")

  vpc_security_group_ids      = [module.jenkins_security_group.security_group_id]
  associate_public_ip_address = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
