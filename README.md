# Terraspace Azure Network Example

This project shows how to use the [Azure Network Terraform registry module](https://registry.terraform.io/modules/Azure/network/azurerm) with [Terraspace](https://terraspace.cloud/).

* Thanks and credit goes to the author of this module: Yuping W.
* Most contributors are doing this on their own free time. Please support them. Contribute back and send them a pull request. Some may ask for donations. Donate to them. Some are consultants. Hire them.

## Setup

    git clone https://github.com/boltops-tools/terraspace-azurerm-network
    cd terraspace-azurerm-network
    bundle

## Deploy

Make sure the `ARM_CLIENT_ID` and `ARM_CLIENT_SECRET` env variables are set:

Terraspace Docs: [Configure Azure](https://terraspace.cloud/docs/learn/azure/configure/)

You also want to set your region.

    az configure --defaults location=eastus

Then to deploy:

    terraspace up network

A network named `network-dev` is created.

## Updating

To update the modules to the latest version from the Terraform registry.

    terraspace bundle update

Then recreate a tfvars file at `app/stacks/gke/tfvars/dev.tfvars`.

## About

[![BoltOps Badge](https://img.boltops.com/boltops/badges/boltops-badge.png)](https://www.boltops.com)

[Terraspace](https://terraspace.cloud/) and this project was built by [BoltOps](https://www.boltops.com). We also offer:

* [Paid Consulting Services](https://www.boltops.com/consulting)
* [BoltOps Pro: Infrastructure Code as a Service](https://www.boltops.com/pro)
