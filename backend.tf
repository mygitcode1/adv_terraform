terraform {
  backend "s3" {
    bucket  = "clustershop"         # Bucket name
    key     = "clustershop.tfstate" # Custom/User defined state file name
    region  = "us-east-1"
    encrypt = true
  }
}
