resource "aws_instance" "terraform_demo" {

  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_terraform.id]

  tags = merge(
    var.common_tags,
    {
      Name = "terraform-demo-1"
      component = "demo"
    }
  )

}

resource "aws_security_group" "allow_terraform" {
  name        = var.sg_name
  description = "Allow TLS inbound traffic and all outbound traffic"

  egress {
    from_port   = var.port
    to_port     = var.port
    protocol    = "-1"
    cidr_blocks = var.cidr
  }

  tags = merge(
    var.common_tags,
    {
      Name = var.sg_name
      component = "demo"
    }
  )
}