resource "aws_instance" "expense" {
  ami = var.ami_id
  count = length(var.instances)
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
   instance_type = var.environment=="prod"?"t3.small":"t3.micro"
tags = merge(
  var.common_tags,
  {
    Name = var.instances[count.index]
  }
)
  }
  
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic and all outbound traffic"
 
ingress {
    from_port = var.from_port
    to_port = var.to_port
    protocol = "tcp"
    cidr_blocks = var.cidr_blocks
    }

egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }
  tags = {
    Name = "allow_tls"
  }
}
