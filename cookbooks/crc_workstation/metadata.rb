name 'crc_workstation'
maintainer 'Ian Henry'
maintainer_email 'ihenry@chef.io'
license 'apache2'
description 'Configures workstations for CRC Chef Conf Workshop'
long_description 'Configures workstations for CRC Chef Conf Workshop'
issues_url 'https://github.com/eeyun/crc_chefconf/issues' if respond_to?(:issues_url)
source_url 'https://github.com/eeyun/crc_chefconf' if respond_to?(:source_url)

version '0.1.0'

depends 'chef-ingredient'
depends 'docker'
depends 'yum-epel'
depends 'apt'
depends 'guacamole'
depends 'etcd'
depends 'confd'
depends 'chef-server-ctl'
depends 'line'
