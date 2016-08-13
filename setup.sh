echo "Welcome to Xe1Gyq Openstack Playground"

apt-get update
apt-get install git

git clone https://github.com/xe1gyq/openstack.git
cd openstack

sh requirements.apt
pip install -U pip setuptools requests
pip install six --upgrade
pip install -r requirements.pip


wget https://raw.githubusercontent.com/openstack-hackathon/training-shade-sdk/master/clouds.yml
