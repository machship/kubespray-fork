# your Kubernetes cluster name here
cluster_name = "test-k8s-cluster"

# list of availability zones available in your OpenStack cluster
#az_list = ["nova"]

# SSH key to use for access to nodes
public_key_path = "~/.ssh/openstack_ansible_equinix.pub"

# image to use for bastion, masters, standalone etcd instances, and nodes
#image = "Ubuntu 20.04"
image = "Ubuntu 20.04 K8"

# user on the node (ex. core on Container Linux, ubuntu on Ubuntu, etc.)
ssh_user = "ubuntu"

group_vars_path="/root/.kubespray/kubespray/inventory/test-cluster/group_vars"
# 0|1 bastion nodes
number_of_bastions = 1

#flavor_bastion = "cc71ca87-74e3-48da-96a0-1836dbaab8e7"
flavor_bastion = "f18b6139-f855-4774-8a2a-12cfc025433b"

# standalone etcds
number_of_etcd = 1

# masters
number_of_k8s_masters = 0

number_of_k8s_masters_no_etcd = 3

number_of_k8s_masters_no_floating_ip = 0

number_of_k8s_masters_no_floating_ip_no_etcd = 0
flavor_k8s_master = "f18b6139-f855-4774-8a2a-12cfc025433b"

k8s_masters = {
  "master-1" = {
     "az"          = "nova"
     "flavor"      = "f18b6139-f855-4774-8a2a-12cfc025433b"
     "floating_ip" = false
     "etcd" = false
     },
   "master-2" = {
     "az"          = "nova"
      "flavor"      = "f18b6139-f855-4774-8a2a-12cfc025433b"
     "floating_ip" = false
     "etcd" = false
   },
   "master-3" = {
     "az"          = "nova"
     "flavor"      = "f18b6139-f855-4774-8a2a-12cfc025433b"
     "floating_ip" = false
     "etcd" = false
   },
}


# nodes
number_of_k8s_nodes = 3

number_of_k8s_nodes_no_floating_ip = 4

flavor_k8s_node = "f18b6139-f855-4774-8a2a-12cfc025433b"

# GlusterFS
# either 0 or more than one
# number_of_gfs_nodes_no_floating_ip = 0
#gfs_volume_size_in_gb = 150
# Container Linux does not support GlusterFS
# image_gfs = ""
# May be different from other nodes
#ssh_user_gfs = "ubuntu"
#flavor_gfs_node = "<UUID>"
# flavor_gfs_node = ""

# networking
#network_name = ""
#network_name = "test-cluster-network"
network_name = "live-internal"
# network_name = "tenant_network"

# Use a existing network with the name of network_name. Set to false to create a network with name of network_name.
use_existing_network = true

# This is the 'aussie-broadband'
external_net = "8489f227-54a8-4a9c-b754-56645a676e5d"
#external_net = "352c97d5-ef19-458c-80f3-332e3c423826"
#external_net = "c7b00713-acc1-4352-be3b-d39354df9325"
#external_net = "b4b28b26-6d43-4ad7-925c-fccb2fee8421"
# external_net = "58c34a2f-2cc8-44e1-8ef0-30cc2c3624eb"
#
#subnet_cidr = "172.29.100.0/25"
#subnet_cidr = "172.29.100.0/25"
# subnet_cidr = "192.168.30.0/24"
#subnet_cidr = "10.0.0.0/22"
router_id = "db4c84af-ab67-40db-ba0e-acd388c7d598"
#floatingip_pool = "external_openstack"
floatingip_pool = "live-internal"

bastion_allowed_remote_ips = ["0.0.0.0/0"]
bastion_fips = ["119.18.13.78"]
# Force port security to be null. Some cloud providers do not allow to set port security.
force_null_port_security = true
