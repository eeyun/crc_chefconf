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

gem_package 'stove' do
  gem_binary '/opt/chefdk/embedded/bin/gem'
  options '--no-user-install'
  action :upgrade
end
