variable "ami_id" {
    type = string
    default = "ami-0b4f379183e5706b9"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "HelloTerraform"
        Project = "roboshop"
        Environment = "Dev"
        Component = "web"
        Terraform = "true"

    }
}

variable "sg-name" {
    type = string
    default = "roboshop-all"
}

variable "sg-description" {
    type = string
    default = "allowing all ports"
}

variable "inbound-from-port" {
    type = number
    default = 0
}

variable "cider-blocks" {
    type = list
    default = ["0.0.0.0/0"]
}