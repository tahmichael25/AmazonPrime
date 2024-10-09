# Configure the AWS provider
provider "aws" {
  region = "us-west-2" # Replace with your desired region
}

# Resource: S3 bucket
resource "aws_s3_bucket" "ElROIBucket" {
  bucket = "my-unique-bucket-name"
  acl    = "private" # Set the ACL to "public-read" if you want to make the bucket public

  tags = {
    Name = "ElROIBucket1"
  }
}