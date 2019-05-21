# Terraform Modules - Playground

This project is a playground to experiment on a few resource types with AWS provider using Terraform

## Modules

These are modules that will be executed in order with `terraform apply` command

* network - create network layer, i.e. VPC, subnet.
* security - create security layer, i.e. security group
* web - create ec2 instance

Each module takes input variable(s) and return ID(s) of the resource(s) it creates as `output`

## Run

The script is created to run in AWS `ap-southeast-2` zone.
It also requires 2 parameters to be able to communicate with AWS as followings: 

* access_key
* secret_key

Variables can be passed into Terraform via command line

> `terraform apply -var="access_key=<your access key>" -var="secret_key=<your secret key>"`

A safer alternative may be having a separate `.tfvars` file storing those variables and running command:

> `terraform apply -var-file="credentials.tfvars"`



