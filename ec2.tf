# EC2 Instance in Public Subnet
resource "aws_instance" "public_servers" {
  count                       = 0
  #ami                        = var.ami
  ami                         = lookup(var.amis, var.region, "ami-default-value")
  instance_type               = element(var.instance_type, count.index)
  subnet_id                   = element(aws_subnet.public[*].id, count.index)
  vpc_security_group_ids      = [aws_security_group.clsp_sg.id]
  key_name                    = element(var.key_name, count.index) # Replace with your key pair name
  associate_public_ip_address = true                               # Enable Public IP
  user_data                   = <<-EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt install -y nginx jq
    echo "<h1>Deployed via Terraform on ${var.vpc_name}_${var.env}_public_server${count.index + 1}</h1>"  | sudo tee /var/www/html/index.html

    # Restart Nginx to apply changes
    sudo systemctl restart nginx
    sudo systemctl enable nginx
  EOF

  tags = {
    Name = "${var.vpc_name}_${var.env}_public_server${count.index + 1}"
  }
}