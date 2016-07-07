#
# Cookbook Name:: crc_workstation
# Recipe:: build-chefdk-workstation
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'crc_workstation::yum-update'
include_recipe 'crc_workstation::set-selinux-permissive'
include_recipe 'crc_workstation::disable-iptables'
include_recipe 'crc_workstation::install-components'
include_recipe 'crc_workstation::install-etcd'
include_recipe 'crc_workstation::install-docker'
include_recipe 'crc_workstation::create-ec2-ohai-hints'
include_recipe 'crc_workstation::fix-root-volume-resize'
include_recipe 'crc_workstation::add-chef-user'
