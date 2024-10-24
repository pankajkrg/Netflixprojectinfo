provider "aws"{
region ="us-east-2"
}
resource "aws_instance" "one"{
ami= "ami-0374badf0de443688"
count=4
instance_type= "t2.medium"
key_name="ohio"
vpc_security_group_ids=["sg-037af579f14bec296"]
tags={
Name=var.instance_name[count.index]
}
}
variable "instance_name"{
default=["jenkins,nexus,tomcat1","tomcat2"]
}
