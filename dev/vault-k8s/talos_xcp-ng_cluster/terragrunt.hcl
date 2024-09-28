terraform {
  # Deploy version v0.0.1 in stage
  source = "git::git@github.com:erik142/tofu-modules.git//talos/talos_xcp-ng_cluster?ref=v0.0.1"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  talos_control_plane_node_count = 3
  talos_worker_node_count        = 3
  talos_iso_version              = "1.8.0"
  talos_iso_schematic_id         = "53b20d86399013eadfd44ee49804c1fef069bfdee3b43f3f3f5a2f57c03338ac"
  xenorchestra_hostname          = get_env("XO_HOST")
  xenorchestra_username          = get_env("XO_USERNAME")
  xenorchestra_password          = get_env("XO_PASSWORD")
  xenorchestra_pool_name         = "Göteborg"
  xenorchestra_network_name      = "Server Network"
  xenorchestra_network_cidr      = "10.10.0.0/24"
  xenorchestra_sr_name           = "Samsung Nvme 2TB"
  xenorchestra_iso_sr_name       = "Linux ISO"
}
