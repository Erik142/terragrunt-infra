terraform {
  # Deploy version v0.0.1 in stage
  source = "git::git@github.com:erik142/tofu-modules.git//kubernetes/flux?ref=v0.0.1"
}

dependency "talos" {
  config_path = "../talos_bootstrap"

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

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  flux_cluster_name                      = "dev_hetzner"
  flux_interval                          = "15s"
  flux_github_owner                      = "Erik142"
  flux_github_repository                 = "flux-personal"
  flux_github_repository_branch          = "dev"
  flux_github_secrets_repository         = "flux-secrets"
  flux_github_token                      = get_env("GITHUB_TOKEN")
  flux_age_private_key                   = get_env("FLUX_AGE_KEY")
  flux_kubernetes_cluster_endpoint       = "${dependency.talos.outputs.kubernetes_client_configuration.host}"
  flux_kubernetes_cluster_ca_certificate = "${dependency.talos.outputs.kubernetes_client_configuration.ca_certificate}"
  flux_kubernetes_client_certificate     = "${dependency.talos.outputs.kubernetes_client_configuration.client_certificate}"
  flux_kubernetes_client_key             = "${dependency.talos.outputs.kubernetes_client_configuration.client_key}"
}
