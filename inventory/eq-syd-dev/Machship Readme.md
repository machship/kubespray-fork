# Kubespray procedure to create a new cluster in Machship's Equinix Datacentres

These notes will refer to command line instructions, and not IDE type tools such as _VS Code_ or _PyCharm_.

1. cd `inventory` and copy an existing configuration directory to the desired new directory name, e.g. `cp -pr eq-syd-dev eq-mel-dev`. For the rest of this README, the newly created directory `eq-mel-dev` will be referred to as the *__configuration directory__*.
2. cd into the new configuration directory and edit the `hosts.yaml` to reflect the _IP addresses_ of the nodes / VMs the cluster will be deployed onto. Note that the addresses should be for the first, or primary network interface. 

E.g.:
```
all:
  hosts:
    dev-node1:
      ansible_host: 10.0.2.50
      ip: 10.0.2.50
      access_ip: 10.0.2.50
      ansible_user: jnewson
      ansible_ssh_private_key_file: ~/.ssh/kubespray
    dev-node2:
      ansible_host: 10.0.2.51
      ip: 10.0.2.51
      access_ip: 10.0.2.51
      ansible_user: jnewson
      ansible_ssh_private_key_file: ~/.ssh/kubespray
    dev-node3:
      ansible_host: 10.0.2.52
      ip: 10.0.2.52
      access_ip: 10.0.2.52
      ansible_user: jnewson
      ansible_ssh_private_key_file: ~/.ssh/kubespray
  children:
    kube_control_plane:
      hosts:
        dev-node1:
        dev-node2:
        dev-node3:
    kube_node:
      hosts:
        dev-node1:
        dev-node2:
        dev-node3:
    etcd:
      hosts:
        dev-node1:
        dev-node2:
        dev-node3:
    k8s_cluster:
      children:
        kube_control_plane:
        kube_node:
```
3. Review the 
