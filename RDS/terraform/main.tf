provider "aws" {
  region = "eu-central-1"
  profile = "ntt"
}

resource "aws_db_instance" "rds_postgres" {
  engine            = "postgres"
  engine_version    = "10.6"

  instance_class    = "db.t2.micro"

  allocated_storage = "20"
  storage_type      = "gp2"

  name              = "mydb"
  username          = "pgadmin"
  password          = "${var.password}"

  port              = "5432"
  final_snapshot_identifier = "${var.final_snapshot_identifier}"

  vpc_security_group_ids      = [
    "${aws_security_group.rds.id}"
  ]

  db_subnet_group_name        = "${aws_db_subnet_group.rds.name}"
  parameter_group_name        = "${aws_db_parameter_group.rds.name}"
}

resource "aws_db_subnet_group" "rds" {
  name        = "db-subnet-group"
  description = "Terraformed subnet group for RDS."
  subnet_ids  = ["${var.subnet_ids}"]
}

resource "aws_db_parameter_group" "rds" {
  family  = "postgres10"
  name    = "myrds-postgres10"
  parameter = [
    {
        name = "autovacuum"
        value = "0"
    }
  ]
  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_security_group" "rds" {
  name    = "rds-sg"
  vpc_id  = "${var.vpc_id}"
}

resource "aws_security_group_rule" "ingress_from_ntt" {
  from_port         = 5432
  to_port           = 5432
  protocol          = "tcp"
  security_group_id = "${aws_security_group.rds.id}"
  type              = "ingress"
  cidr_blocks       = ["141.77.0.0/16"]

}

resource "aws_security_group_rule" "all_egress" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  security_group_id = "${aws_security_group.rds.id}"
  type              = "egress"
}
