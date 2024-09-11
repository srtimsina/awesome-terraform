# Example 1
Using `terraform`, filter the latest official AMI released by Cannonical. Launch EC2 instance.

# Usage
~~~
terraform init
terraform plan
terraform apply
terraform plan -out=plan.out
terraform apply plan.out
~~~