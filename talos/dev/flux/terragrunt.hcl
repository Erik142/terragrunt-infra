include "root" {
  path = find_in_parent_folders()
}

include "env" {
  path = "${get_terragrunt_dir()}/../../_env/flux.hcl"
}

inputs = {
  flux_github_repository_branch = "dev"
  flux_cluster_name             = "dev/mgmt"
}
