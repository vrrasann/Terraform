############################################################
# S3 Bucket
############################################################

resource "aws_s3_bucket" "myBucket" {
  bucket = "my-tf-s3-bucket-state-file-2020"
  acl    = "private"

  tags = {
    Name        = "my-tf-s3-bucket-state-file-2020"
    Environment = "POC"
  }
}