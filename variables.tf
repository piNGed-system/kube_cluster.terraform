variable "aws_region" {
  description = "default aws region to use"
  type        = string
  default     = "us-west-2"
}

variable "default_az" {
  description = "Default availability zone for ec2 instance"
  type        = string
  default     = "us-west-2a"
}
variable "aws_access_key_id" {
  description = "AWS access key"
  type        = string
}

variable "aws_secret_key_id" {
  description = "AWS secret key id"
  type        = string
}

variable "default_tags" {
  description = "Default tags map"
  type        = map(string)
  default = {
    "Name" = "piNGed_main"
  }
}

variable "ssh_key" {
  description = "ssh key to place under ubuntu user"
  type        = string
  default     = ""
}