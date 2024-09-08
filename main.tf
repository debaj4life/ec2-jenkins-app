resource "aws_instance" "debaj_app" {
  ami             = var.ami_id
  instance_type   = var.small_instance_type
  key_name        = var.key_name
  security_groups = [aws_security_group.debaj_app_sg.name]
  tags = {
    Name = "jenkins-controller"
  }
}

resource "aws_instance" "demo_app" {
  ami             = var.ami_id
  instance_type   = var.large_instance_type
  key_name        = var.key_name
  security_groups = [aws_security_group.debaj_app_sg.name]
  tags = {
    Name = "jenkins-agent"
  }
}