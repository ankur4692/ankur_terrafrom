resource "aws_instance" "web" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "t2.micro"
  key_name   = "${aws_key_pair.deployer.key_name}"
  security_groups = "${aws_security_group.allow_tls.id}]"
  tags = {
    Name = "Web_applicatoin"
  }
}
