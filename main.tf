provider "aws" {
  region     = "ap-south-1" # Replace with the desired region
  access_key = "AKIATNS7C4QCP3NZJDRT"
  secret_key = "4HYxhy/Udb8FuOCZ7ALhTeY6ySXOVGTDyo3jvWI1"
}

resource "aws_security_group_rule" "rds-user" {
  type        = "ingress"
  from_port   = "*" # Replace with the desired port number
  to_port     = "*" # Replace with the desired port number
  protocol    = "tcp"
  cidr_blocks = ["122.161.52.113/32"] # Replace with the desired IP range
  
  security_group_id = "sg-0b0ddee46bf0703b4" # Replace with the desired security group ID
}
