terraform {
  backend "s3" {
      bucket = "terraform-tfstate-870897087"
      key = "terraform/myproject"
#   region = "eu-west-1"
  }
}