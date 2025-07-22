variable "allow_everything" {
   type = string
   default = "sg-09c7c70bd56f0d58b"
}
variable "zone_id" {
  default = "Z01686671NYDIP6ZJB3D7"
}
variable "domain_name" {
  default = "lithesh.shop"
}

variable "ec2_instance" {
   default = {
        instance_type  = "t2.micro"
   }
}
