# Example 1
Using `terraform`, filter the latest official AMI released by Cannonical. Launch EC2 instance.

# Example 2
In the example, terraform will store the state in s3 bucket.

# Example 3
In this example, variables are defined in a separate file. 

# Example 4
Example of how to create terraform module and store locally

# Example 5
Example of how to push terraform in github repository and use it.

# Example 6
Git tagging for the version
~~~
git tag "v1.0.0"
git push --tags
~~~

## Usage
Update the module in example.tf to use module hosted in github.
~~~
module "my_ec2_instance" {
  source = "github.com/srtimsina/tf-module-example?ref=v1.0.0"

    ec2_instance_type = "t2.micro"
    ec2_instance_name = "My instance"
    ec2_ami_id = data.aws_ami.cloud_suryaraj.id

}
~~~

Then, run `terraform get -update`

Similarly update the module in example.tf to use module hosted in terraform cloud
~~~
    source  = "app.terraform.io/suryarajtimsina/example/aws"
    version = "1.0.1"
~~~

Get the update
~~~
terraform get -update 
terraform plan -var-file=variables/dev.tfvars
~~~

# Example 7
Versioning module
~~~
    source  = "app.terraform.io/suryarajtimsina/example/aws"
    version = ">=1.0.1"

~~~