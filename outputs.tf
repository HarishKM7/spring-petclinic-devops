output "my_ip" {
  description = "My IP. Whitelisted in Jenkins security group."
  value       = chomp(data.http.my_ip.body)
}

output "jenkins_ip" {
  description = "Public IP of the Jenkins server, in case you need to SSH to it. Use this command: 'ssh -i spring-petclinic.pem ubuntu@IP'. Remember, only your IP is allowed SSH."
  value       = module.jenkins_server.public_ip[0]
}

output "jenkins_url" {
  description = "Browse to this URL to access Jenkins. Remember, only your IP is allowed access."
  value       = "http://${module.jenkins_server.public_ip[0]}:8080/"
}

output "spring_petclinic_private_ip" {
  description = "Private IP of the server hosting the Spring PetClinic app."
  value       = module.spring_petclinic_server.private_ip[0]
}
