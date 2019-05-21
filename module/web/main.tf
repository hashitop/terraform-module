variable "subnet_main_id" {
  
}

variable "sec_group_id" {
  
}

resource "aws_instance" "web" {
  ami = "ami-0fb7513bcdc525c3b"
  instance_type = "t2.micro"
  subnet_id = "${var.subnet_main_id}"
  vpc_security_group_ids = [ "${var.sec_group_id}" ]
  key_name = "hashitop-apac"
  associate_public_ip_address = true
  count = 2
}

output "public_ip" {
  value = [ "${aws_instance.web.*.public_ip}" ]
}
