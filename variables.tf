variable "region" {
  default = "us-east-1"
}

variable "project" {
  default = "cloudprotegida-ec2-jenkins"
}

variable "profile" {
  default = "default"
}

variable "tags" {
  default = {
    Name    = "jenkins-manager"
    Product = "jenkins"
    Team    = "sre"
  }
}

variable "cidr" {
  default = [
    "0.0.0.0/32"
  ]
}

variable "subnet_id" {
  default = ""
}

variable "key_name" {
  default = "jenkins-manager-aws"
}

variable "key" {
  default = ""
}
