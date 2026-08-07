provider "aws" {
    region = "eu-north-1"
    access_key = var.aws_access_key
    secret_key = var.aws_secret_key
}

# vpc resource

resource "aws_vpc" "docxx_vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name = "docxx-vpc"
        Enviornment = "Dev"
    }
}

# s3 bucket resource

resource "aws_s3_bucket" "docxx_store" {
    bucket = "docxx-api-store"
    tags = {
        Name = "docxx"
        Enviornment = "Dev"
    }
    region = "eu-north-1"
}
