terraform {
  # Deploy version v0.0.1 in stage
  source = "git::git@github.com:erik142/tofu-modules.git//talos/talos_bootstrap?ref=v0.0.1"
}

dependency "xcp-ng" {
  config_path = "../talos_xcp-ng_cluster"

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

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  talos_control_plane_nodes = [for x in dependency.xcp-ng.outputs.talos_control_planes : {
    hostname     = x.ipv4_addresses[0]
    install_disk = "/dev/xvda"
  }]
  talos_worker_nodes = [for x in dependency.xcp-ng.outputs.talos_workers : {
    hostname     = x.ipv4_addresses[0]
    install_disk = "/dev/xvda"
    data_disk    = "/dev/xvdb"
  }]
  talos_cluster_endpoint = "https://${dependency.xcp-ng.outputs.talos_control_planes[0].ipv4_addresses[0]}:6443"
  talos_cluster_name     = "talos_dev_cluster"
  talos_version          = "v1.8.0"

  cluster_bgp_local_asn       = 65001
  cluster_bgp_peer_asn        = 65000
  cluster_bgp_peer_address    = "10.10.0.1"
  cluster_bgp_auth_secret_ref = ""
  cilium_load_balancer_cidr   = "10.50.0.0/24"
}
