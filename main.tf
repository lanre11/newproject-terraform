resource "aws_instance" "newproject_app" {
  ami           = "ami-0e5df6fd7455a69b3"
  instance_type = "t3.micro"
  key_name      = "new-key"

  tags = {
    Name = "newproject_app"
  }
}