
locals {
    kms_alias                 = "alias/nyl-${var.lob}-${var.env}-cmk"
    vpc_name                  = "nyl-${var.lob}-${var.env}-vpc"
    security_group_name       = "nyl-${var.lob}-${var.env}-remote-access-sg"
    subnet_name               = "nyl-${var.lob}-${var.env}-compute-subnet-${var.region}a"
    ami_name_regex            = "${var.lob}-${var.env}-${replace(var.os_type, "Windows", "win")}$"
    iam_instance_profile_name = "nyl-${var.lob}-${var.env}-default-instance-profile"
}

data "template_file" "ssm_document" { 
  template = file("./scripts/user_data.txt") 
  vars = {
      test_variable = local.ami_name_regex
  }
}

data "aws_vpc" "vpc" {
    filter {
        name   = "tag:Name"
        values = [local.vpc_name]
    }
}

data "aws_subnet" "subnet" {
    filter {
        name   = "tag:Name"
        values = [local.subnet_name] 
    }
}

data "aws_security_group" "default" {
    name = "default"
}

data "aws_security_group" "sg" {
    name = local.security_group_name
}

data "aws_kms_alias" "kms_alias" {
    name = local.kms_alias
}

data "aws_ami" "windows_ami" {
    owners      = ["self"]
    most_recent = true
    name_regex  = local.ami_name_regex
}
