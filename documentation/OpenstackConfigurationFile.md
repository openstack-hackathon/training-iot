# Openstack Configuration File

> OpenStackClient is primarily configured using command line options and environment variables. Most of those settings can also be placed into a configuration file to simplify managing multiple cloud configurations. [Python Openstack Configuration](http://docs.openstack.org/developer/python-openstackclient/configuration.html)

> clouds.yaml is a configuration file that contains everything needed to connect to one or more clouds. It may contain private information and is generally considered private to a user.
> > - current directory
> > - ~/.config/openstack
> > - /etc/openstack

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
