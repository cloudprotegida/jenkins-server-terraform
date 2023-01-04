resource "aws_instance" "cloudprotegida-jenkins-manager" {
  ami                  = data.aws_ami.amazon-linux-2.id
  instance_type        = "t3a.small"
  key_name             = var.key_name
  iam_instance_profile = aws_iam_instance_profile.dev-resources-iam-profile.name 
  subnet_id            = var.subnet_id
  associate_public_ip_address = true
  vpc_security_group_ids       = [aws_security_group.allow_ssh.id, aws_security_group.allow_web.id]
  user_data            = <<EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install wget -y
    sudo amazon-linux-extras install java-openjdk11 -y
    sudo amazon-linux-extras install epel -y
    sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
    sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
    sudo yum install jenkins -y
    sudo systemctl enable jenkins
    sudo systemctl start jenkins
EOF
  tags = var.tags

  provisioner "local-exec" {
    command = "sleep 180 && python3 ./local-exec/get-passwd.py ${self.public_ip} > ./local-exec/admin-jenkins-pass.txt"
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = var.key
  tags = var.tags
}

resource "aws_eip" "eip" {
  instance = aws_instance.cloudprotegida-jenkins-manager.id
  vpc      = true
}