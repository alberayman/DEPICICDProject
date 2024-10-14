variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

variable "ami" {
  description = "AMI ID"
  default     = "ami-0c55b159cbfafe1f0"  
}
