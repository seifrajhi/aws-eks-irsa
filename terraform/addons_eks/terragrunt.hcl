include "global_config" {
  path = find_in_parent_folders("terragrunt-global-config.hcl")
}

dependency "terraform_eks" {
  config_path  = "../terraform_eks"
  skip_outputs = true
}
