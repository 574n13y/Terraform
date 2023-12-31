resource "aws_security_group" "kasm-default-elb-sg" {
  name        = "${var.project_name}-kasm-allow-elb-access"
  description = "Security Group for ELB"
  vpc_id      = data.aws_vpc.data-kasm-default-vpc.id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.web_access_cidrs
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.web_access_cidrs
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.anywhere]
  }

  tags = {
    Name = "${var.project_name}-kasm-allow-access"
  }
}

data "aws_security_group" "data-kasm_default_elb_sg" {
  id = aws_security_group.kasm-default-elb-sg.id
}

resource "aws_security_group" "kasm-webapp-sg" {
  name        = "${var.project_name}-${var.kasm_zone_name}-kasm-webapp"
  description = "Allow access to webapps"
  vpc_id      = data.aws_vpc.data-kasm-default-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ssh_access_cidrs
  }

  ingress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    security_groups = [data.aws_security_group.data-kasm_default_elb_sg.id]
  }

  ingress {
    from_port = 443
    to_port   = 443
    protocol  = "tcp"
    cidr_blocks = [
      data.aws_subnet.data-kasm_agent_subnet.cidr_block,
      data.aws_subnet.data-kasm_guac_subnet.cidr_block
    ]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.anywhere]
  }
}

data "aws_security_group" "data-kasm_webapp_sg" {
  id = aws_security_group.kasm-webapp-sg.id
}

resource "aws_security_group" "kasm-agent-sg" {
  name        = "${var.project_name}-${var.kasm_zone_name}-kasm-agent-access"
  description = "Allow access to agents"
  vpc_id      = data.aws_vpc.data-kasm-default-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ssh_access_cidrs
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = data.aws_subnet.data-kasm_webapp_subnets[*].cidr_block
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.anywhere]
  }
}

data "aws_security_group" "data-kasm_agent_sg" {
  id = aws_security_group.kasm-agent-sg.id
}

resource "aws_security_group" "kasm-db-sg" {
  name        = "${var.project_name}-${var.kasm_zone_name}-kasm-db-access"
  description = "Allow access to webapps"
  vpc_id      = data.aws_vpc.data-kasm-default-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ssh_access_cidrs
  }

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = data.aws_subnet.data-kasm_webapp_subnets[*].cidr_block
  }

  ingress {
    from_port   = 6379
    to_port     = 6379
    protocol    = "tcp"
    cidr_blocks = data.aws_subnet.data-kasm_webapp_subnets[*].cidr_block
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.anywhere]
  }
}

data "aws_security_group" "data-kasm_db_sg" {
  id = aws_security_group.kasm-db-sg.id
}

resource "aws_security_group" "kasm-guac-sg" {
  name        = "${var.project_name}-${var.kasm_zone_name}-kasm-guac-access"
  description = "Allow access to guac RDP nodes"
  vpc_id      = data.aws_vpc.data-kasm-default-vpc.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.ssh_access_cidrs
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = data.aws_subnet.data-kasm_webapp_subnets[*].cidr_block
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.anywhere]
  }
}

data "aws_security_group" "data-kasm_guac_sg" {
  id = aws_security_group.kasm-guac-sg.id
}
