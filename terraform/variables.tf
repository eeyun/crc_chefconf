# Credentials
variable "access_key" {}
variable "secret_key" {}

# Location and Connectivity
variable "region" {}

# Nodes
variable "baked_ami" {}
variable "node_num" {}
variable "department" {}
variable "trainer" {}
variable "customer" {}

# Students
variable student_list {}

# Environment Type
# May only equal 'essentials' 'win_essentials' 'delivery' 'habitat' or 'demo'
variable "class_type" {}

# Etcd
variable disco {}
