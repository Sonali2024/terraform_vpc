resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.production.id
  cidr_block = "192.178.1.0/24"

  tags = {
    Name = "${var.project_name}-${var.environment}-public"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.production.id
  cidr_block = "192.178.2.0/24"

  tags = {
    Name = "${var.project_name}-${var.environment}-private"
  }
}