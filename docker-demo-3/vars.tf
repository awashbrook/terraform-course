variable "WORKSTATION_CIDR_BLOCK" {
}

variable "AWS_ACCESS_KEY" {
}

variable "AWS_SECRET_KEY" {
}

variable "AWS_REGION" {
  default = "eu-west-1"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "~/.ssh/mykey"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "~/.ssh/mykey.pub"
}


variable "ECS_INSTANCE_TYPE" {
  default = "t2.micro"
}

# Full List: http://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-optimized_AMI.html
variable "ECS_AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-05c75efdc7843b54e"
    us-west-2 = "ami-064803387adcb64b3"
    eu-west-1 = "ami-071a319a752b45fe7"
  }
}
variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-0ee02acd56a52998e"
    us-west-2 = "ami-0dd273d94ed0540c0"
    eu-west-1 = "ami-038d7b856fe7557b3"
  }
}

variable "INSTANCE_DEVICE_NAME" {
  default = "/dev/xvdh"
}

variable "JENKINS_VERSION" {
  default = "2.204.1"
}

