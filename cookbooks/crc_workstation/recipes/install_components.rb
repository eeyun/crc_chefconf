#
# Cookbook Name:: crc_workstation
# Recipe:: install-components
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Install ChefDK
chef_ingredient 'chefdk' do
  action :install
  version :latest
end

# Install Editors
editors = %w( vim emacs nano)
editors.each do |pkg|
  package pkg do
    action :install
  end
end

chef_gem 'stove' do
  compile_time true
  action :install
end

append_if_no_line 'Update max startups' do
  path '/etc/ssh/sshd_config'
  line 'MaxStartups 250'
end

append_if_no_line 'Update max sessions' do
  path '/etc/ssh/sshd_config'
  line 'MaxSessions 250'
end
