# Configure the AWS Provider
provider "aws" {
  region = "us-east-1" # Specify your desired AWS region
}

# Define variables
variable "instance_ami" {
  description = "The ID of the AMI to use for the EC2 instance"
  default     = "ami-12345678" # Specify your desired AMI ID
}

variable "instance_type" {
  description = "The type of EC2 instance to launch"
  default     = "t2.micro" # Specify your desired instance type
}

# Create EC2 instance
resource "aws_instance" "example_instance" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  # Optionally, you can configure other instance settings such as key name, security groups, etc.
  # key_name      = "your_key_name"
  # security_groups = ["your_security_group_name"]
  # subnet_id     = "your_subnet_id"
  # iam_instance_profile = "your_iam_instance_profile_name"
}
