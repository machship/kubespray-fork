prefix = "k8s"

inventory_file = "inventory.ini"

network = "LIVE-INTERNAL"

machines = {
  "node-1" : {
    "node_type" : "master",
    "ip" : "10.0.1.36", # e.g. 192.168.0.10
    "netmask" : "22"
  },
  "node-2" : {
    "node_type" : "master",
    "ip" : "10.0.1.37", # e.g. 192.168.0.20
    "netmask" : "22"
  },
  "node-3" : {
    "node_type" : "master",
    "ip" : "10.0.1.38", # e.g. 192.168.0.21
    "netmask" : "22"
  }
}

gateway = "10.0.0.1" # e.g. 192.168.0.1

ssh_public_keys = [
  # Put your public SSH key here
  "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDRz64CgPPb9oiYCvvXTDBBaVtbLNsIWOvGJ1NQOXjfs6bQZzugtaSuuNIMIFIpJqNS36xe/ucPqJYdyQCO1HUAk1/iXRFpszzhzREbEEDJUG32fB8HZBuON2Ql1DemGXTtFKlOs4zccOoo1OjCuPSER2PEQhDSrPEvvd2rciZtXYy9NKx8bgkzl+XIQatYx8tTbMGT5yY/Epkborp+/GXnANkNrzFuaJ7MOayBp9Z3CuBjbARwzgxi8cQwCFf/smrtURmDcIslhbD/4C4JYuMWcNsBdQEaaYv4qeea0gAZvvQnLoOURmAIk7KvqnkJEQuGX0bbSpz2P06Vl+JDBbmfngfiWuE9hwEWfAI2NFkUdHbxffb5ltAWfxN9DrrxkoUnbyCcwiwrUJsm9hvqVpH3U4B/MyjVgrk5SwheDni/raO1fI+kYaaK9I61PRIboV4JWhijfn3SEyX1WBIBRxMKs5wzBl11oG068xwVS7IFaG9qWO/M5i15cN3EF0Mz8Is= openstack-ansible-equinix"
  # "ssh-rsa I-did-not-read-the-docs 2",
]

vsphere_datacenter      = "equinix-sy1"
vsphere_compute_cluster = "cluster01" # e.g. Cluster
vsphere_datastore       = "esxi1-datastore3" # e.g. ssd-000000
vsphere_server          = "vcenter.vsphere.local" # e.g. vsphere.server.com

template_name = "ubuntu-20.04-k8-template" # e.g. ubuntu-bionic-18.04-cloudimg

