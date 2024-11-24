include "root" {
  path = find_in_parent_folders()
}

include "env" {
  path = "${get_terragrunt_dir()}/../../_env/talos.hcl"
}

inputs = {
  talos_control_plane_nodes = [for x in dependency.infra.outputs.talos_control_planes : {
    hostname     = x.ipv4_addresses[0]
    install_disk = "/dev/xvda"
  }]
  talos_worker_nodes = [for x in dependency.infra.outputs.talos_workers : {
    hostname     = x.ipv4_addresses[0]
    install_disk = "/dev/xvda"
    data_disk    = "/dev/xvdb"
  }]
  talos_cluster_name        = "talos_dev_cluster"
  cilium_load_balancer_cidr = "10.50.0.0/24"
}
