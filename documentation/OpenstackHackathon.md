# Openstack Hackathon

# Linux Development Board

1. [Create Droplet](https://cloud.digitalocean.com/droplets )
   - __Choose an Image__ Distribution: Ubuntu 14.04.5 
   - __Choose a size__ $5/mo 
   - __Add block storage__ None
   - __Choose a datacenter region__
   - __Select additional options__ 
     - Private Networking
     - Backups
     - IPv6
     - User Data
   -  Add your SSH keys
   -  Finalize and create
     - How many droplets: 1
     - Choose a hostname: openstackme     


# Openstack Library Environment

```sh
root@openstackme:~# curl https://raw.githubusercontent.com/xe1gyq/openstack/master/setup.sh -o - | sh
```

```sh
root@openstackme:~# cd openstack/
root@openstackme:~/openstack#  
```

# Openstack Configuration File

> OpenStackClient is primarily configured using command line options and environment variables. Most of those settings can also be placed into a configuration file to simplify managing multiple cloud configurations. [Python Openstack Configuration](http://docs.openstack.org/developer/python-openstackclient/configuration.html)

> clouds.yaml is a configuration file that contains everything needed to connect to one or more clouds. It may contain private information and is generally considered private to a user.

- current directory
- ~/.config/openstack
- /etc/openstack

# 