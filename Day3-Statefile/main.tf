resource "aws_ec2_instance" "name" {
  ami="ami_id"
  instance_type = "t2.micro"
}