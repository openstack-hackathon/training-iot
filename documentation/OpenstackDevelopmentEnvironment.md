# Openstack Development Environment

```sh
root@openstackme:~# curl https://raw.githubusercontent.com/xe1gyq/openstack/master/setup.sh -o - | sh
```

```sh
root@openstackme:~# cd openstack/
root@openstackme:~/openstack#  
```

```sh
echo
echo "Welcome to Xe1Gyq Openstack Playground"
echo

sleep 4

apt-get update
apt-get install git

git clone https://github.com/xe1gyq/openstack.git
cd openstack

sh requirements.apt
pip install -U pip setuptools requests
pip install six --upgrade
pip install -r requirements.pip

wget https://raw.githubusercontent.com/openstack-hackathon/training-shade-sdk/master/clouds.yml

echo "clouds.yml ready under openstack directory! please modify"
echo
echo "Now go to openstack directory to get started!"
echo "Happy Openstack'ing!"
echo
```
