
# creating instance
resource "aws_instance" "web" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = var.Instance_type
  key_name   = "${aws_key_pair.deployer.key_name}"
  tags = {
    Name = "HelloWorld"
  }
}

