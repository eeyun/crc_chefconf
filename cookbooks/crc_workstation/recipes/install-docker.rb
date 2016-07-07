#
# Cookbook Name:: crc_workstation
# Recipe:: install-docker
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'yum-epel'

package 'docker-io' do
  action :install
end

service 'docker' do
  action [:start, :enable]
end

gem_package 'kitchen-docker' do
    gem_binary '/opt/chefdk/embedded/bin/gem'
    options '--no-user-install'
    action :upgrade
end

chef_gem 'kitchen-dokken' do
  compile_time true
end

docker_image 'centos' do
    tag 'centos6'
    action :pull
end

docker_image 'ubuntu' do
    tag '14.04'
    action :pull
end
