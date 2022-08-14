locals {
  account_id = data.aws_caller_identity.current.account_id
}


resource "aws_iam_role" "Admin_Role" {

  name = "admin_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = ["ec2.amazonaws.com"]
          AWS = [
            "arn:aws:iam::${local.account_id}:root",

          ]
        },
        Condition = {
          "BoolIfExists" = {
            "aws:MultiFactorAuthPresent" : true
          }
        }
      },
    ]
  })

  tags = {
    Creator = "Terraform"
  }
}
