variable "region" {
  type = string
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "vpc_id" {
  type = string
}


variable "subnets" {
  type = list(string)
}
