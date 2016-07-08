# crc_workstation

This cookbook is leveraged by the packer build job `crc-workstation-centos.json` in the `packer` directory. It builds and configures a standardized workstation that should supply workshop attendees with everything they need to start hacking on chef code!

There are no attributes and all configuration is static.

To leverage this cookbook, feel free to add it to the run_list of a bootstrapped node or use the `crc-workstation-centos.json` packer job to bake your own AMI!
