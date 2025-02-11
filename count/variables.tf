variable "ami_id" {
  type        = string
  default = "09c813fb71547fc4f"
  description = "This is RHEL AMI id"
}

variable "environment" {
    default = "dev"
}

variable "instance_type" {
    default = "t3.micro"
}

variable "instances" {
    default = ["mysql", "backend", "frontend"]
}

/*variable "ec2_tags" {
    type = map
    default = {
        project = "expense"
        component = "backend"
        environment = "dev"
        Name = "expense-backend-dev"
    }
}*/
variable "zone_id" {
    default = "Z021448929NMXW4P65UQE"
}
variable "domain_name" {
    default = "parijathapractice.online"
}


variable "from_port" {
    type = number
    default = 22
}


variable "to_port" {
    type = number
    default = 22
}


variable "cidr_blocks" {
    type = list(string)
    default = ["0.0.0.0/0"]
}


variable "common_tags" {
    type = map
    default = {
        Name = "expense"
        environment = "dev"
    }
}


