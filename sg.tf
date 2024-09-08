resource "aws_security_group" "debaj_app_sg" {
  name        = "debaj-app-sg"
  description = "security group to allow ssh"
  vpc_id      = var.vpc_id
  tags = {
    Name = "debaj-app-sg"
  }
}


resource "aws_security_group_rule" "ingress_ssh" {
  type              = "ingress"
  description       = "ssh access to the server"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.debaj_app_sg.id
}

resource "aws_security_group_rule" "egress_ssh" {
  type              = "egress"
  description       = "ssh access to the server"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.debaj_app_sg.id
}

resource "aws_security_group_rule" "ingress_http" {
  type              = "ingress"
  description       = "http access to the server"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.debaj_app_sg.id
}

resource "aws_security_group_rule" "ingress_jenkins" {
  type              = "ingress"
  description       = "http access to the server"
  from_port         = 50000
  to_port           = 50000
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.debaj_app_sg.id
}

resource "aws_security_group_rule" "ingress_tcp" {
  type              = "ingress"
  description       = "http access to the server"
  from_port         = 8080
  to_port           = 8080
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.debaj_app_sg.id
}





