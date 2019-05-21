resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  tags = {
    Name = "hashitop-vpc"
  }
}

output "vpc_main_id" {
  value = "${aws_vpc.main.id}"
}


resource "aws_subnet" "main" {
  vpc_id = "${aws_vpc.main.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}

output "subnet_main_id" {
  value = "${aws_subnet.main.id}"
}
