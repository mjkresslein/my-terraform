resource "aws_s3_bucket" "datasync_bucket" {
  bucket              = "lcmp-dev-comm-datasync"
  force_destroy       = true
  object_lock_enabled = false
  tags = {
    Name = "lcmp-dev-comm-datasync"
  }
}