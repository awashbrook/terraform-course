resource "aws_key_pair" "andy-wash" {
  key_name = "mykey"
  public_key = "ssh-rsa my-public-key"
}

resource "aws_instance" "example" {
  ami           = var.AMIS[var.AWS_REGION]
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.mykey.key_name}"
}

provisioner "file" {
  source = "script.sh"
  destination = "/opt/script.sh"
  connection {
    user = var.instance_username
    password = ${file(${var.path_to_private_key})}
  }
}