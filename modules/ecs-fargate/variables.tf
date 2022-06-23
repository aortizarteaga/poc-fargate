
#----------------------------------------------
# ECS CLUSTER
#----------------------------------------------

variable "region" {
  type        =   string
  default     =   "us-east-1"
  description =   "The AWS region cluster is created in"   
}

variable "app_name" {
  type        =   string
  description =   "Application Name"
}

variable "ecs_cluster_arn " {
  type        =   string
  default     =   ""
  description =   "ARN of an ECS cluster"   
}

variable "desired_count" {
  description = "(Optional) The number of instances of the task definition to place and keep running. Defaults to 0."
  type        = number
  default     = 1
}

#-----------------------------------------------
# AWS ECS SERVICE network_configuration 
#-----------------------------------------------

variable "public_subnets" {
  description =   "The public subnets associated with the task or service."
  type        =   list(any)
  default     = ["10.10.0.0/24", "10.10.1.0/24"]
}

variable "private_subnets" {
  description =   "The private subnets associated with the task or service."
  type        =   list(any)
  default     =   ["10.10.100.0/24", "10.10.101.0/24"]
}
variable "security_groups" {
  description = "(Optional) The security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used."
  type        = list(any)
  default     = []
}

