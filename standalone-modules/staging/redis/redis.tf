resource "aws_elasticache_subnet_group" "lcmp_subnet_group" {
  name        = "lcmpredis"
  subnet_ids  = var.group_subnet_ids
  description = "LCMP ElastiCache Subnet Group"
}

resource "aws_cloudwatch_log_group" "elasticache_group" {
  name = "/aws/elasticache/LCMPcluster"
}

resource "aws_elasticache_replication_group" "test" {
  description                = "Test replication group"
  replication_group_id       = "LCMPcluster"
  engine                     = "valkey"
  node_type                  = "cache.t3.micro"
  automatic_failover_enabled = false # Set to 'false' for single-node to disable Multi-AZ
  num_cache_clusters         = 1
  port                       = 6379
  apply_immediately          = true
  security_group_ids         = var.sec_group_ids
  subnet_group_name          = aws_elasticache_subnet_group.lcmp_subnet_group.name
  log_delivery_configuration {
    destination      = aws_cloudwatch_log_group.elasticache_group.name
    destination_type = "cloudwatch-logs"
    log_format       = "text"
    log_type         = "slow-log"
  }
}
