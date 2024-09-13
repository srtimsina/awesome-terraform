# Example 1
Using `terraform`, filter the latest official AMI released by Cannonical. Launch EC2 instance.

# Example 2
In the example, terraform will store the state in s3 bucket.

# Example 3
In this example, variables are defined in a separate file. 

To overwrite the default variable values from commandline.
~~~
terraform apply -var="ec2_instance_type=t3.medium"
~~~

To pass the variable values from a separate file
~~~
terraform apply -var-file=dev.tfvars
terraform plan -var-file=prod.tfvars
~~~