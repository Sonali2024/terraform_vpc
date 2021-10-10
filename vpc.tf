resource "aws_vpc" "production"{
    cidr_block = "192.178.0.0/16"

    tags = {
        Name = "${var.project_name}-${var.environment}-vpc"
    }
    
}