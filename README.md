# crc_chefconf

This is the development repo for the workshop tooling used to build the  `Effective Devops for Crafting Reuseable Cookbooks` workshop @ Chef Conf 2016.

### Terraform
The `terraform` directory contains all of the provisioning code used to build the network and workstations for each student. It uses the AMIs that are created from a packer job.

### Packer
The `packer` directory contains the `packer .json` file for baking the student workstation AMIs from the `crc_workstation` cookbook.

### Cookbooks
The `cookbooks` directory contains the `crc_workstation` cookbook being used by `packer` to bake workshop AMIs.

### Vendor
The `vendor` directory contains all cookbook dependencies being used by `crc_workstation`.
