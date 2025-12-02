resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  vpc_id      = aws_vpc.main.id
  description = "Allow HTTP and SSH"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

data "aws_ssm_parameter" "amazon_linux" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

resource "aws_instance" "web" {
  ami           = data.aws_ssm_parameter.amazon_linux.value
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.public.id

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  user_data = <<EOF
#!/bin/bash
yum update -y
yum install -y httpd
systemctl enable httpd
systemctl start httpd
echo "<h1>This is a Multi Tier Application</h1>" > /var/www/html/index.html
EOF

  tags = { Name = "web-server" }
}

output "web_sg_id" {
  value = aws_security_group.web_sg.id
}

output "web_public_ip" {
  value = aws_instance.web.public_ip
}
