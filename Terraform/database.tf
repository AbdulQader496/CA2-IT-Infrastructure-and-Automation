variable "db_username" {
  default = "dbuser"
}

variable "db_password" {
  default = "StrongPassword123"
}

resource "aws_security_group" "db_sg" {
  vpc_id = aws_vpc.main.id
  name   = "db-sg"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group_rule" "db_ingress" {
  type                     = "ingress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
  security_group_id        = aws_security_group.db_sg.id
  source_security_group_id = aws_security_group.web_sg.id
}

resource "aws_db_subnet_group" "db_subnets" {
  name = "db-subnet-group"

  subnet_ids = [
    aws_subnet.private1.id,
    aws_subnet.private2.id
  ]
}

resource "aws_db_instance" "inventory" {
  allocated_storage      = 20
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t3.micro"

  username = var.db_username
  password = var.db_password

  db_subnet_group_name = aws_db_subnet_group.db_subnets.name

  vpc_security_group_ids = [
    aws_security_group.db_sg.id
  ]

  publicly_accessible = false
  skip_final_snapshot = true
  multi_az            = false
}

output "db_endpoint" {
  value = aws_db_instance.inventory.address
}
