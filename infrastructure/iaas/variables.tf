variable "aws_access_key" {
    type = string
    description = "AWS access key"
    default = ""
}

variable "aws_secret_key" {
    type = string
    description = "AWS secret key"
    default = ""
}

variable "gcp_project_id" { 
    type = string
    description = "GCP project id"
    default = "docxx-504820"
}