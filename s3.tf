# Configure AWS provider
provider "aws" {
  region = "us-west-2" # Replace with your desired region
}

resource "aws_s3_bucket" "m5bucket1" {
  bucket = "m5bucket1"

  tags = {
    Name = "My S3 Bucket"
  }
}

resource "aws_iam_policy" "m5bucket_iam_policy" {
  name = "m5bucket_iam_policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:ListBucket"
      ],
      "Resource": [
        "arn:aws:s3:::m5bucket1/*"
      ]
    }
  ]
}
EOF
}

resource "aws_iam_user_policy_attachment" "attach_policy" {
  user = "m5tah"
  policy_arn = aws_iam_policy.m5bucket_iam_policy.arn
}