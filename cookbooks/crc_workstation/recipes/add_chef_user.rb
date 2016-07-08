#
# Cookbook Name:: crc_workstation
# Recipe:: add_chef_user
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Create user 'sumac' with password 'H4b!7AT' for student use
user 'sumac' do
  action :create
  comment 'OH YEAH'
  home '/home/sumac'
  shell '/bin/bash'
  password 'H4b!7AT'
  supports manage_home: true
end

# Setup 'sumac' users .bash_profile
template '/home/sumac/.bash_profile' do
  source 'chef-bash-profile.erb'
  owner 'sumac'
  group 'sumac'
  mode '0644'
end

execute 'reset sumac password' do
  command 'echo "sumac:H4b!7AT"|chpasswd && touch /tmp/pass_updated'
  not_if { ::File.exist?('/tmp/pass_updated') }
end

case node['platform_family']
when 'rhel'
  # Enables password authentication
  template '/etc/ssh/sshd_config' do
    source 'sshd_config.erb'
    owner 'root'
    group 'root'
    mode '0644'
    notifies :restart, 'service[sshd]'
  end

  service 'sshd' do
    action :nothing
  end
when 'debian'
  # Enables password authentication
  template '/etc/ssh/sshd_config' do
    source 'sshd_config.erb'
    owner 'root'
    group 'root'
    mode '0644'
    notifies :restart, 'service[ssh]'
  end
  service 'ssh' do
    action :restart
  end
end

# Enables password-less sudo for user 'sumac'
template '/etc/sudoers' do
  source 'sudoers.erb'
  owner 'root'
  group 'root'
  mode '0440'
end
