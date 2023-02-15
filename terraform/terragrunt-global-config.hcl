locals {
  aws_profile = "saif"
}

inputs = {
  aws_profile = local.aws_profile
}

remote_state {
  backend = "s3"

  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }

  config = {
    bucket         = "aws-eks-irsa-tf-states"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "aws-eks-irsa-tf-states"
    profile        = local.aws_profile
  }
}
