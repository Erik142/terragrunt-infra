locals {
  env_vars               = read_terragrunt_config("${get_repo_root()}/common/env.hcl")
  tofu_modules_base_url  = local.env_vars.locals.tofu_modules_base_url
  tofu_modules_version   = local.env_vars.locals.tofu_modules_version
  talos_iso_version      = "1.8.0"
  talos_iso_schematic_id = "53b20d86399013eadfd44ee49804c1fef069bfdee3b43f3f3f5a2f57c03338ac"
}
