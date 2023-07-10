resource "aws_db_subnet_group" "vprofile-rds-subgrp" {
    name = "main"
    subnet_ids = [module.vpc.private_subnets[0], module.vpc.private_subnets[1], module.vpc.private_subnets[2]]
    tags = {
        Name = "Subnet group for RDS"
        }
    }

resource "aws_elasticache_subnet_group" "vprofile-ecache-subgrp" {
    name = "vprofile-ecache-subgrp"
    subnet_ids = [module.vpc.private_subnets[0], module.vpc.private_subnets[1], module.vpc.private_subnets[2]]
    tags = {
        Name =  "Subnet group for ECACHE"
        }
}

resource "aws_db_instance" "vprofile-rds" {
  allocated_storage    = 20
  db_name              = var.dbname
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  username             = var.dbuser
  password             = var.dbpass
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  db_subnet_group_name = [aws_db_subnet_group.vprofile-rds-subgrp.name]
  vpc_security_group_ids = [aws_security_group.vprofile-backend-sg.id]
  multi_az             = "false"
  publicly_accesible   = "false"
}