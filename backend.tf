terraform {
  backend "s3" {
    # Configure these values with your own S3 bucket and DynamoDB table
    # Created via modules/s3-backend/main.tf
    # Run: terraform init -backend-config="bucket=YOUR_BUCKET" -backend-config="dynamodb_table=YOUR_TABLE"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true
  }
}
