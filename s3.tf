resource "aws_s3_bucket" "project_tfstates_bucket" {
  bucket = var.tfstates_s3_bucket_name

  tags = {
    environment = "ops"
  }
}

resource "aws_s3_bucket_versioning" "project_tfstates_bucket_versioning" {
  bucket = aws_s3_bucket.project_tfstates_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

