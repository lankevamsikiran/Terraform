provider "aws" {
  region = var.region
}

#Create security group with firewall rules
resource "aws_security_group" "batch19_security_grp" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id = var.vpc_id

 ingress {
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 # outbound from Ec
 egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags= {
    Name = "Batch-17 Security Group"
  }
}

#Create EC2 instance for testing purpose
resource "aws_instance" "myFirstInstance" {
  ami     = var.ami_id
  instance_type = var.instance_type
  # #Cross attribute reference 
  vpc_security_group_ids= [aws_security_group.batch19_security_grp.id]
}  
