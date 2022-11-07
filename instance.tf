
# creating instance
resource "aws_instance" "web" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = var.Instance_type
  tags = {
    Name = "HelloWorld"
  }
}

