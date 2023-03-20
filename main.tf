//resource "aws_docdb_cluster" "main" {
//  cluster_identifier      = "${var.env}-docdb"
//  engine                  = var.engine
//  master_username         = data.aws_ssm_parameter.user.value
//  master_password         = data.aws_ssm_parameter.pass.value
//  backup_retention_period = var.backup_retention_period
//  preferred_backup_window = var.preferred_backup_window
//  skip_final_snapshot     = true
//}

resource "aws_docdb_subnet_group" "main" {
  name       = "${var.env}-docdb"
  subnet_ids = var.subnet_ids

  tags = merge(
    var.tags,
    { Name = "${var.env}-subnet-group" }
  )
}
