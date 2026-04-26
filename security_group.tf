resource "aws_security_group" "dev_sg" {
  name        = "dev_security_group"
  description = "Security Group for developer"
  vpc_id      = aws_vpc.dev_vpc.id

}

resource "aws_vpc_security_group_ingress_rule" "allow_any_from_my_ip" {
  security_group_id = aws_security_group.dev_sg.id
  cidr_ipv4         = var.my_ip
  ip_protocol       = "-1"
}

resource "aws_vpc_security_group_egress_rule" "allow_any_outside" {
  security_group_id = aws_security_group.dev_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}