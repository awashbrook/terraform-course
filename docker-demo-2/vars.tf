variable "WORKSTATION_CIDR_BLOCK" {
}

variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "eu-west-1"
}

variable "ECS_INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "ECS_AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-05c75efdc7843b54e"
    us-west-2 = "ami-064803387adcb64b3"
    eu-west-1 = "ami-071a319a752b45fe7"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "~/.ssh/mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "~/.ssh/mykey.pub"
}

variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
