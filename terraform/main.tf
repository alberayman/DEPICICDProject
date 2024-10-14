resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type

  user_data = <<-EOF
            #!/bin/bash
            sudo yum update -y
            sudo yum install -y docker
            sudo service docker start
            sudo usermod -aG docker ec2-user
            sudo amazon-linux-extras install ansible2 -y
            EOF

  tags = {
    Name = "TerraformExample"
  }
}
