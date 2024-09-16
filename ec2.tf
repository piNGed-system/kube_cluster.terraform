resource "aws_instance" "main" {
  ami               = "ami-05134c8ef96964280"
  availability_zone = var.default_az
  security_groups   = [aws_security_group.main.id]
  subnet_id         = aws_subnet.main.id
  instance_type     = "t2.micro"
  root_block_device {
    volume_size = 8
  }
  user_data = local.userdata
  tags      = var.default_tags
}

resource "aws_security_group" "main" {
  name        = "piNGed_main"
  description = "Main rules for resources"
  vpc_id      = aws_vpc.main.id
}

resource "aws_vpc_security_group_ingress_rule" "main" {
  security_group_id = aws_security_group.main.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}