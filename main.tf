provider "aws" {
  region = "ap-south-1" # Replace with the desired region
  access_key = "${{ secrets.AWS_ACCESS_KEY_ID }}"
  secret_key = "${{ secrets.AWS_SECRET_ACCESS_KEY }}"
}

resource "aws_security_group_rule" "rds-user" {
  type        = "ingress"
  from_port   = -1 # Replace with the desired port number
  to_port     = -1 # Replace with the desired port number
  protocol    = "tcp"
  cidr_blocks = ["122.161.52.113/32"] # Replace with the desired IP range
  
  security_group_id = "sg-0b0ddee46bf0703b4" # Replace with the desired security group ID
}
