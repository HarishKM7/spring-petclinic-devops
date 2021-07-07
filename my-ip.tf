# My IP.
# To be whitelisted in Jenkins security group.

data "http" "my_ip" {
  url = "https://ipv4.icanhazip.com/"
}
