resource "aws_nat_gateway" "devops" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "nat-gateway-devops"
  }
}

resource "aws_eip" "nat" {
  domain = "vpc" 

  tags = {
    Name = "nat-eip"
  }
}