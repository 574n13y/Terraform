resource "aws_instance" "kasm-db" {
  ami                    = var.ec2_ami
  instance_type          = var.db_instance_type
  vpc_security_group_ids = [data.aws_security_group.data-kasm_db_sg.id]
  subnet_id              = data.aws_subnet.data-kasm_db_subnet.id
  key_name               = var.aws_key_pair

  root_block_device {
    volume_size = 40
  }

  user_data = templatefile("${path.module}/userdata/db_bootstrap.sh",
    {
      kasm_build_url             = var.kasm_build
      user_password              = var.user_password
      admin_password             = var.admin_password
      redis_password             = var.redis_password
      database_password          = var.database_password
      service_registration_token = var.service_registration_token
      manager_token              = var.manager_token
      swap_size                  = var.swap_size
    }
  )

  tags = {
    Name = "${var.project_name}-kasm-db"
  }
}

data "aws_instance" "data-kasm_db" {
  instance_id = aws_instance.kasm-db.id
}
