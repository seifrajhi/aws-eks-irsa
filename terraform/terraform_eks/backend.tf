# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket         = "aws-eks-irsa-tf-states"
    dynamodb_table = "aws-eks-irsa-tf-states"
    encrypt        = true
    key            = "terraform_eks/terraform.tfstate"
    profile        = "saif"
    region         = "eu-west-1"
  }
}
