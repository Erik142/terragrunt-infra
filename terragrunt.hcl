generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
terraform {
  backend "s3" {
    endpoints                   = { s3 = "s3.eu-central-003.backblazeb2.com" }
    bucket                      = "wahlberger-dev-s3-opentofu-state"
    key                         = "${path_relative_to_include()}/terraform.tfstate"
    region                      = "us-west-1" // Not used by Backblaze, region is embedded into the URL endpoint instead.
    encrypt                     = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
  }
}
EOF
}
