# Below is the resource block which creates EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-0bfddf4206f1fa7b9"
  instance_type = "t2.micro"
  key_name = "OregonKP"
  tags = {
    Name = "WebServer"
  }
}


#I have to review this code