resource "aws_instance" "ubuntu_server" {
  ami           = "ami-053b0d53c279acc90" # Ubuntu 22.04 LTS in us-east-1
  instance_type = "t2.micro"
 

  tags = {
    Name = "Ubuntu-Terraform-Instance"
  }
}
