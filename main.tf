resource "aws_s3_bucket" "Test-Bucket" {
  bucket = "test-bucket-173s9"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}