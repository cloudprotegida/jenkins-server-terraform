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
    automate = "Auto-Shutdown"
  }
}

variable "cidr" {
  default = [
    "189.36.195.211/32"
  ]
}

variable "subnet_id" {
  default = "subnet-0115a35fc11b6e31d"
}

variable "key_name" {
  default = "jenkins-manager-aws"
}

variable "key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCsahoCKAmIyYY9ycUUJJibYokWTbiDd+Pcmkqdz3Zv8hs4+4++sZRs0nuTM7ViLGnyqz6yu00+k3UmGCt29xeYPm7vqch1+QSokvEXP5z3zRiO2KLm9x8ZyDUcIKYGLfurLhX50Hftyj+H/h8YMiQ1/rKHLxDtvaCuDhydjJoEsKqRzppcxsy4HcLyppHSL48iJispObTbmfmIg4zlYA+7wB+091ghOQlYLdHxeAat/2mjQRpgN9Msa8HF5mPM1gxgXXwpFv0Xoa5I57HbXObAaSHm2O7aroXIEVf2gsBrIhRx7y0dTkgrHM6lW3geX8lRW2KBel1zh+5Onkl/Z+WnKowUl349AH/CrozsG8LAR0dN7ubAVYmtRaLZYdKDgYaRsVmcPOXPnlN/daqHztyI61Za8LH2g7AcxWtNCpWs1PTEo5V1AB3AcvSLUjaDm/Ek1Ak0HiGAKwX3ZCEYUc9vmCIQr5UadQ9CkeIIybxjSfBBJAMOtpB59u7dcnJA6DU="
}