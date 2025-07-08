resource "aws_s3_bucket" "example_bucket" {
  bucket = "my-unique-bucket-name-${random_id.bucket_suffix.hex}" 
  tags = {
    Name        = "Example Bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_versioning" "example_versioning" {
  bucket = aws_s3_bucket.example_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}


output "my_Practice_terraform" {
  value = aws_s3_bucket.example_bucket.bucket
}
