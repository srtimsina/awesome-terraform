terraform {
  backend "s3" {
    bucket = "tf-devops-suryaraj-demo"
    key    = "example-2/terraform.tfstate"
    region = "us-east-1"

  }
}