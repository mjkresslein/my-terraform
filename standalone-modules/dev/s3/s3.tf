resource "aws_s3_bucket" "physna_pulumi_state" {
  bucket = "physna-bah-pulumi-state"

  tags = {
    Name    = "physna-bah-pulumi-state"
    Purpose = "Storing Pulumi state for external company and client deployment in EKS"
  }
}
