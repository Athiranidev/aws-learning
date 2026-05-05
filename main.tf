resource "aws_instance" "web" {
  ami           = "ami-0e742cca61fb65051"
  instance_type = "t3.micro"
  subnet_id = "subnet-xxxxxxxx"
  user_data = <<-EOF
              #!/bin/bash
              apt update -y
              apt install -y apache2
              systemctl start apache2
              systemctl enable apache2
              echo "Hello from EC2" > /var/www/html/index.html
              EOF
}
