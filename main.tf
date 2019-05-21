
variable "access_key" {}

variable "secret_key" {}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "ap-southeast-2"
}

module "network" {
  source = "module/network"
}

module "security" {
  source = "module/security"
  vpc_main_id = "${module.network.vpc_main_id}"
}

module "web" {
  source = "module/web"
  subnet_main_id = "${module.network.subnet_main_id}"
  sec_group_id = "${module.security.sec_group_id}"

}

output "public_ip" {
  value = [ "${module.web.public_ip}" ]
}
