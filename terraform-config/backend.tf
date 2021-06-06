terraform{
    backend "s3" {
        bucket = "bucket_terraform_state"
        key="project/terraform.tfstate"
        region="us-east-1"
    }
}