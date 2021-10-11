resource "aws_security_group" "stag-SG" {
  name        = "${var.project_name}-${var.environment}-SG"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.staging.id

  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [ aws_vpc.staging.cidr_block ]
}

ingress {
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [ aws_vpc.staging.cidr_block ]
}

ingress {
    from_port = 53
    to_port = 53
    protocol = "tcp"
    cidr_blocks = [ aws_vpc.staging.cidr_block ]
}
}
