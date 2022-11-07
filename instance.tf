
# creating instance
resource "aws_instance" "web" {
  ami           = "ami-09d3b3274b6c5d4aa"
  instance_type = "var.Instance_type"
  key_name   = "${aws_key_pair.deployer.key_name}"
  tags = {
    Name = "HelloWorld"
  }
}

# creating key pair
resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCrzmhKjEIFPedxVDdBS6GW6GT88FRHESjAqugAB4ywlznw/qcF7Vf8TPF/CxgU7n4qUr4p91fLDqFbJnLdjZpZw2jEcS9LW3cFwR23719Le1v6uACGldxpECZ1+WDMNppJosSOMBj9iNSinn5NuDnxqhnA0hKJYnlbCr8ZTreWUgyfZDo4dNE6013ArIXIyry6wiR3SqYv+e6QhjsBfv8pDiOnNapKRtmsdL3VRWrkC83NFqWnI0Fn1a06t0wGVvfsYnw0a5uxLobdYoqGe+X52mOTNmMUPHcxBgQRdl9UkTwupS/tHonhI2X3849lszPoJ3Icgss7gT8JUDkWvxuj root@ip-172-31-29-51.ec2.internal"
  #public_key = file("${path.module}/id_rsa.pub")       
}

output "keyname" {
	value = "${aws_key_pair.deployer.key_name}"
}


