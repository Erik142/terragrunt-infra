locals {
  env_vars              = read_terragrunt_config("${get_repo_root()}/common/env.hcl")
  infra_env_vars        = read_terragrunt_config("${get_terragrunt_dir()}/../../_env/infra.hcl")
  talos_iso_version     = local.infra_env_vars.locals.talos_iso_version
  tofu_modules_base_url = local.env_vars.locals.tofu_modules_base_url
  tofu_modules_version  = local.env_vars.locals.tofu_modules_version
}

terraform {
  source = "${local.tofu_modules_base_url}//kubernetes/talos?ref=${local.tofu_modules_version}"
}

dependency "infra" {
  config_path = "${get_terragrunt_dir()}/../infra"

  mock_outputs = {
    talos_control_planes = [
      {
        ipv4_addresses = [
          "10.123.234.1"
        ]
      },
      {
        ipv4_addresses = [
          "10.123.234.2"
        ]
      },
      {
        ipv4_addresses = [
          "10.123.234.3"
        ]
      }
    ]
    talos_workers = [
      {
        ipv4_addresses = [
          "10.123.234.4"
        ]
      },
      {
        ipv4_addresses = [
          "10.123.234.5"
        ]
      },
      {
        ipv4_addresses = [
          "10.123.234.6"
        ]
      }
    ]
  }
  mock_outputs_allowed_terraform_commands = ["init", "validate"]
}

inputs = {
  talos_cluster_endpoint      = "https://${dependency.infra.outputs.talos_control_planes[0].ipv4_addresses[0]}:6443"
  talos_version               = "v${local.talos_iso_version}"
  cluster_bgp_local_asn       = 65001
  cluster_bgp_peer_asn        = 65000
  cluster_bgp_peer_address    = "10.10.0.1"
  cluster_bgp_auth_secret_ref = ""
}
