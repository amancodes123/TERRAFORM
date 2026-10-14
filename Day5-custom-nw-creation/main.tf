resource "aws_vpc" "custom_vpc" {
  cidr_block = "10.0.0.0/16"
  tags={
    Name = "custom-vpc"
  }
}

resource "aws_subnet" "subnet-1" {
    cidr_block = "10.0.0.0/24"
  vpc_id = aws_vpc.custom_vpc
  tags = {
    Name ="subnet-1"
  }
}

resource "aws_internet_gateway" "dev_igw" {
  vpc_id = aws_vpc.custom_vpc.id
  tags = {
    Name = "dev_igw"
  }
}

resource "aws_route_table" "dev_rt" {
  vpc_id = aws_vpc.custom_vpc.id
  route = {
    cidr_block ="0.0.0.0/0"
    gateway_id = aws_internet_gateway.dev_rt.id
  }
}

# resource "aws_route_table_association" "name" {
# #   subnet_id = aws_subnet.subnet-1.id

# }