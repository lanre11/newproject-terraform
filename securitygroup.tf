resource "aws_security_group" "newproject_sg" {
  name        = "newproject-sg"
  description = "sg for newproject app"
  vpc_id      = var.vpc_id
}

resource "aws_security_group_rule" "ssh_rule" {
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.newproject_sg.id
  to_port           = 22
  type              = "ingress"
  description       = "ssh-access"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "http_rule" {
  from_port         = 80
  protocol          = "tcp"
  security_group_id = aws_security_group.newproject_sg.id
  to_port           = 80
  type              = "ingress"
  description       = "http-access"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "outbound_rule" {
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.newproject_sg.id
  to_port           = 0
  type              = "egress"
  description       = "outbound-access"
  cidr_blocks       = ["0.0.0.0/0"]
}