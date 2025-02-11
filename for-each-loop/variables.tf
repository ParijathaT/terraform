variable "ami_id" {
  type        = string
  default = "09c813fb71547fc4f"
  description = "This is RHEL AMI id"
}
variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}

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