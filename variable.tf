variable "ami" {
  description = "the ami ID to use for the instance"
  type        = string
  default     = "ami-0e5df6fd7455a69b3"
}

variable "instance_type" {
  description = "the type of instance to use"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "the keypair name to use for ssh access"
  type        = string
  default     = "new-key"
}

variable "environment" {
  description = "the env for the instance e.g dev, qa, prod"
  type        = string
  default     = "dev"
}

variable "vpc_id" {
  description = "the ID of the vpc where sg will be created"
  type        = string
  default     = "vpc-022f95165ae2610c3"
}