variable "region" {
  type        = string
  description = "aws region"
  default     = "eu-west-2"
}

variable "small_instance_type" {
  type        = string
  description = "instance type"
  default     = "t3.medium"
}

variable "ami_id" {
  type        = string
  description = "ami"
  default     = "ami-0b31d93fb777b6ae6"
}

variable "vpc_id" {
  type        = string
  description = "vpc"
  default     = "vpc-071a935c677dbb90c"
}

variable "large_instance_type" {
  type        = string
  description = "instance type"
  default     = "t3.large"
}

variable "key_name" {
  type        = string
  description = "key"
  default     = "tutorial-key"
}