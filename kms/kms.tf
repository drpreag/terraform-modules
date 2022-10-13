resource "aws_kms_key" "main-key" {
  description             = local.vpc-name
  deletion_window_in_days = 7
  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Principal" : {
          "AWS" : "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
        },
        "Action" : "kms:*",
        "Resource" : "*"
      }
    ]
  })
  tags = {
    Name = "${ocal.vpc-name}-${var.environment}"
  }
}

resource "aws_kms_alias" "alias" {
  name          = "alias/${local.vpc-name}"
  target_key_id = aws_kms_key.main-key.id
}

data "aws_caller_identity" "current" {}
