variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "instance_ami" {
  type        = string
  description = ""
  default     = "ami-0cff7528ff583bf9a"
}

variable "instance_type" {
  type        = string
  description = "t2.micro"
}

variable "instance_tags" {
  type        = map(string)
  description = ""
  default = {
    Name    = "Ubuntu"
    Project = "Curso AWS com Terraform"
    Env     = "dev"
  }
}