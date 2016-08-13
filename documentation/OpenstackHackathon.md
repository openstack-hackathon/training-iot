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


```sh
root@edison:~# curl https://raw.githubusercontent.com/xe1gyq/GiekIs/master/setup.sh -o - | sh
```

```sh
root@edison:~# cd GiekIs/
root@edison:~/GiekIs# 
```