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

module "my_ec2_instance" {
    source  = "app.terraform.io/suryarajtimsina/example/aws"
    version = "1.0.1"

    ec2_instance_type = "t2.micro"
    ec2_instance_name = "My instance"
    ec2_ami_id = data.aws_ami.cloud_suryaraj.id

}

output "name" {
  value = module.my_ec2_instance.ec2_instace_id
}