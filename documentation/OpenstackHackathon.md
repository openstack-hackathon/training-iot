# Openstack Hackathon

# Shade

> shade is a simple client library for interacting with OpenStack clouds [Shade Homepage](http://docs.openstack.org/infra/shade/)

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


# Openstack Environment

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

```sh
clouds:
  myfavoriteopenstack:
    auth:        
      auth_url: https://YOUR_IDENTITY_CONTROLLER
      username: YOUR_USERNAME
      password: YOUR_PASSWORD
      project_name: YOUR_PROJECT
      domain_id: default
    region_name: RegionOne
```

# Hello Openstack


```sh

```

- [Marcella Bonell Github](https://github.com/MBonell)

