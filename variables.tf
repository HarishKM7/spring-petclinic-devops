variable "ubuntu_ami" {
  description = "AMI ID of the latest Ubuntu LTS release. Note: This AMI's CPU architecture (x86 / ARM) should be compatible with the EC2 instance types you provide for Jenkins & spring-petclinic."
}

variable "jenkins_instance_type" {
  description = "Type of EC2 instance to use for Jenkins. Tip: Use a compute-optimized instance for faster builds. Note: This instance type's CPU architecture (x86 / ARM) should be compatible with the Ubuntu AMI ID you provide."
}

variable "spring_petclinic_instance_type" {
  description = "Type of EC2 instance to use for hosting the spring-petclinic app. Tip: Use a memory-optimized instance for better performance. Note: This instance type's CPU architecture (x86 / ARM) should be compatible with the Ubuntu AMI ID you provide."
}
