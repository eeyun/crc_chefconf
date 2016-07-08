#
# Cookbook Name:: crc_workstation
# Recipe:: create_ec2_ohai_hints
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

directory '/etc/chef/ohai/hints' do
  recursive true
end

file '/etc/chef/ohai/hints/ec2.json' do
  content '{}'
end
