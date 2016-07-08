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

package 'git'

execute 'install stove' do
  command 'su sumac -l -c "chef gem install stove && touch /tmp/stove.installed"'
  not_if { ::File.exist?('/tmp/stove.installed') }
  action :run
end
