include "root" {
  path = find_in_parent_folders()
}

include "env" {
  path   = "${get_terragrunt_dir()}/../../_env/infra.hcl"
  expose = true
}

terraform {
  source = "${include.env.locals.tofu_modules_base_url}//kubernetes/talos_xcp_ng?ref=${include.env.locals.tofu_modules_version}"
}

inputs = {
  talos_control_plane_node_count = 3
  talos_worker_node_count        = 3
  talos_iso_version              = "${include.env.locals.talos_iso_version}"
  talos_iso_schematic_id         = "${include.env.locals.talos_iso_schematic_id}"
  xenorchestra_hostname          = get_env("XO_HOST")
  xenorchestra_username          = get_env("XO_USERNAME")
  xenorchestra_password          = get_env("XO_PASSWORD")
  xenorchestra_pool_name         = "Göteborg"
  xenorchestra_network_name      = "Server Network"
  xenorchestra_network_cidr      = "10.10.0.0/24"
  xenorchestra_sr_name           = "Samsung Nvme 2TB"
  xenorchestra_iso_sr_name       = "Linux ISO"
}
