locals {
  env_vars              = read_terragrunt_config("${get_repo_root()}/common/env.hcl")
  tofu_modules_base_url = local.env_vars.locals.tofu_modules_base_url
  tofu_modules_version  = local.env_vars.locals.tofu_modules_version
}

terraform {
  source = "${local.tofu_modules_base_url}//kubernetes/flux?ref=${local.tofu_modules_version}"
}

dependency "talos" {
  config_path = "${get_terragrunt_dir()}/../talos"

  mock_outputs = {
    kubernetes_client_configuration = {
      host               = "1.2.3.4"
      ca_certificate     = ""
      client_certificate = ""
      client_key         = ""
    }
  }
  mock_outputs_allowed_terraform_commands = ["init", "validate"]
}

inputs = {
  flux_interval                          = "15s"
  flux_github_owner                      = "Erik142"
  flux_github_repository                 = "flux-personal"
  flux_github_secrets_repository         = "flux-secrets"
  flux_github_token                      = get_env("GITHUB_TOKEN")
  flux_age_private_key                   = get_env("FLUX_AGE_KEY")
  flux_kubernetes_cluster_endpoint       = "${dependency.talos.outputs.kubernetes_client_configuration.host}"
  flux_kubernetes_cluster_ca_certificate = "${dependency.talos.outputs.kubernetes_client_configuration.ca_certificate}"
  flux_kubernetes_client_certificate     = "${dependency.talos.outputs.kubernetes_client_configuration.client_certificate}"
  flux_kubernetes_client_key             = "${dependency.talos.outputs.kubernetes_client_configuration.client_key}"
}
