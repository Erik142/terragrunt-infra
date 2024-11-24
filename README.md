# Terragrunt IaC

This repository contains my personal Terragrunt Infrastructure as Code. It defines development, and production environments for my own homelab infrastructure. The "dev" environment is supposed to be executed in a CI environment, while "prod" will be used on the actual homelab infrastructure, and can therefore be seen as more of a "CD" environment.

I use [Terragrunt](https://terragrunt.gruntwork.io/) to handle dependencies between different OpenTofu modules, and also to define the "dev" and "prod" environments described above. The file named `terragrunt.hcl` located in the root of the repo defines the location of the OpenTofu state. The state is located remotely for consistency when running Terragrunt locally, as well as in a CI/CD environment.

The Terragrunt files in this repository uses [OpenTofu modules](https://github.com/Erik142/tofu-modules) as the IaC source code.

Currently only the `dev` environment is actively used. The `prod` environment will be used once I have replaced my current homelab hardware (single host) with multiple hosts.

Each directory in the root of this repository defines a separate infrastructure "project", except for the `common` directory which simply contains common environment variables to be shared between multiple projects.

Finally, I use [Taskfile](https://taskfile.dev/) to execute Terragrunt. Since Terragrunt `secrets` are defined using environment variables, I use Taskfile to populate such secrets by querying my [1Password](https://1password.com/) vault. Furthermore, since Terragrunt will, by default, clone the OpenTofu modules git repository using a specific git tag, I also use Taskfile to override this behavior and instead use a local clone of the OpenTofu modules. This helps significantly during development.
