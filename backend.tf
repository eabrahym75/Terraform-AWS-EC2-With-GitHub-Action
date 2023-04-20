# create S3 bucket
resource "aws_s3_bucket" "lock-Bucket" {
  bucket = "test-bucket-17891s"

  versioning {
    enabled = true
  }
  server_side_encryption_configuration{
    rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}
  tags = {
    Name        = "lock bucket"
    Environment = "State lock"
  }
}

# create a DynamoDB in AWS 
resource "aws_dynamodb_table" "state-lock-table1789s" {
  name           = "State-lock1789s"
  billing_mode   = "PROVISIONED"
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "LockId"
  

  attribute {
    name = "LockId"
    type = "S"
  }

   tags = {
    Name        = "dynamodb-table-For-state-lock"
    Environment = "production"
  }
}
