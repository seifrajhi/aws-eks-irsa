data "terraform_remote_state" "addons" {
  backend = "s3"
  config = {
    bucket  = "aws-eks-irsa-tf-states"
    key     = "terraform_eks/terraform.tfstate"
    region  = "eu-west-1"
    profile = var.aws_profile
  }
}
