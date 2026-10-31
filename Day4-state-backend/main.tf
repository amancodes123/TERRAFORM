resource "aws_instance" "name" {
    ami = "ami-073f45061d35c86f0"
    instance_type = "t3.micro"

    availability_zone = "us-east-1b"
    tags = {
      Name = "AMAN"
    }
  
}