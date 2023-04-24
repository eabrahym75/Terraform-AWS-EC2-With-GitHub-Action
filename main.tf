# Create EC2 Instance - Ubuntu 20.04 for nginx
resource "aws_instance" "my-apache-server" {
  ami               = "ami-0aa2b7722dc1b5612"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  key_name          = "aws_key"
  user_data         = file("install-apache.sh")
  tags = {
    "Name" = "Ubuntu Apache server"
  }
}