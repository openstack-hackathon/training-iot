echo
echo "Welcome to Xe1Gyq Openstack Workstation Playground"
echo

sleep 4

apt-get update
apt-get install git

git clone https://github.com/xe1gyq/openstack.git
cd openstack/workstation

sh requirements.apt
pip install -U pip setuptools requests
pip install six --upgrade
pip install -r requirements.pip

wget https://raw.githubusercontent.com/openstack-hackathon/training-shade-sdk/master/clouds.yml

echo
echo "clouds.yml ready! please modify"
echo "Happy Openstack'ing!"
echo
