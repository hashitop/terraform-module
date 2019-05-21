variable "vpc_main_id" {
  
}

resource "aws_security_group" "hashitop_allow_ssh" {
  name        = "hashitop_allow_ssh"
  description = "Allow TLS inbound traffic"
  vpc_id = "${var.vpc_main_id}" 
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }

}

output "sec_group_id" {
  value = "${aws_security_group.hashitop_allow_ssh.id}"

}
