# Talos Linux Kubernetes Cluster

This Terragrunt project defines a Talos Linux Kubernetes Cluster, to be used as a Kubernetes management cluster. The following components are used:

- infra: Deploys the underlying infrastructure for the cluster. For the [dev](https://github.com/Erik142/tofu-modules/tree/main/kubernetes/talos_xcp_ng) environment, this consists of virtual machines deployed with XCP-ng.
- [talos](https://github.com/Erik142/tofu-modules/tree/main/kubernetes/talos): Installs Talos Linux with basic cluster infrastructure such as Cilium as CNI, and mayastor as CSI.
- [flux](https://github.com/Erik142/tofu-modules/tree/main/kubernetes/flux): Bootstraps FluxCD in the cluster, pointing to the corresponding application and secret git repositories.
