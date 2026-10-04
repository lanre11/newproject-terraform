resource "aws_instance" "newproject_app" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = var.key_name
  security_groups = [aws_security_group.newproject_sg.name]

  tags = {
    Name = "newproject-app-${var.environment}"
  }
  user_data = file("userdata.sh")
}