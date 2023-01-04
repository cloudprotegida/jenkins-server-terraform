resource "aws_iam_instance_profile" "dev-resources-iam-profile" {
name = "${var.project}-profile"
role = aws_iam_role.cloudprotegida-ec2-jenkins-role.name
tags = var.tags
}

resource "aws_iam_role" "cloudprotegida-ec2-jenkins-role" {
  name = "${var.project}-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
  tags = var.tags
}

resource "aws_iam_role_policy" "cloudprotegida-ec2-jenkins-policy" {
  name = "${var.project}-policy"
  role = aws_iam_role.cloudprotegida-ec2-jenkins-role.id
  policy = jsonencode({
  "Version": "2012-10-17",
  "Statement": [
      {
          "Sid": "VisualEditor0",
          "Effect": "Allow",
          "Action": [
              "dynamodb:*",
          ],
          "Resource": "*"
      }
  ]
})
}


