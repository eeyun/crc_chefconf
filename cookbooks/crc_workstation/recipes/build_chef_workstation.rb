#
# Cookbook Name:: crc_workstation
# Recipe:: build_chefdk_workstation
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'crc_workstation::yum_update'
include_recipe 'crc_workstation::set_selinux_permissive'
include_recipe 'crc_workstation::disable_iptables'
include_recipe 'crc_workstation::add_chef_user'
include_recipe 'crc_workstation::install_components'
include_recipe 'crc_workstation::install_docker'
include_recipe 'crc_workstation::create_ec2_ohai_hints'
include_recipe 'crc_workstation::fix_root_volume_resize'
