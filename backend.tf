terraform{
    backend "s3" {
        bucket = "bucket-terraform-state-aj"
        key="project/terraform.tfstate"
        region="us-east-1"
    }
