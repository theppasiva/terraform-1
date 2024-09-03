resource "aws_instance" "web" {
  ami           = var.ami_id #devops-practice
  instance_type = var.instance_type
  vpc_security_group_ids=[aws_security_group.roboshop-all.id]
  #vpc_security_group_ids=[aws_security_group.allow_tls.id]

  tags = var.tags
}


 
# resource "aws_security_group" "allow_tls" {
#   name        = "allow_tls"
#   description = "Allow TLS inbound traffic and all outbound traffic"
#   #vpc_id      = aws_vpc.main.id

#   tags = {
#     Name = "allow_tls"
#   }
# }

# resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
#   security_group_id = aws_security_group.allow_tls.id
#   #cidr_ipv4         = aws_vpc.main.cidr_block
#   cidr_ipv4         = "0.0.0.0/0"
#   from_port         = 0
#   ip_protocol       = "tcp"
#   to_port           = 0
# }

# resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
#   security_group_id = aws_security_group.allow_tls.id
#   cidr_ipv4         = "0.0.0.0/0"
#   ip_protocol       = "-1" # semantically equivalent to all ports
# }


  

