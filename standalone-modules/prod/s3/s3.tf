resource "aws_s3_bucket" "maap_api_bucket" {
  bucket = "strata-prod-maap-api-storage"

  tags = {
    Name    = "strata-prod-maap-api-storage"
    Purpose = "MAAP API storage location for LLMs to be used in API EKS pod."
  }
}
