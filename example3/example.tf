data "aws_ami" "cloud_suryaraj" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "instance_1" {
  ami           = data.aws_ami.cloud_suryaraj.id
  instance_type = var.ec2_instance_type

  tags = {
    Name = var.ec2_instance_name
  }
}