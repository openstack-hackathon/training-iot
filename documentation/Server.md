# Server

```
root@openstackme:~# apt-get update
root@openstackme:~# apt-get install -y apache2
root@openstackme:~# apt-get install -y libapache2-mod-wsgi
root@openstackme:~# apt-get install -y python-pip
root@openstackme:~# pip install flask
root@openstackme:~# pip install tornado
root@openstackme:~# pip install yrestful
```

```
root@openstackme:~# cd /var/www/html/
root@openstackme:/var/www/html# ls
index.html
root@openstackme:/var/www/html# mkdir 
root@openstackme:/var/www/html# cd iotinc
root@openstackme:/var/www/html/iotinc# echo "Hello World" > index.html
root@openstackme:/var/www/html/iotinc# 
```

# UberSimpleWebsockets

> Extremely simple example of websocket using Python/Perl (server-side) and Javascript (client-side) [UberSimpleWebsockets](https://github.com/albertobeta/UberSimpleWebsockets)

```
root@openstackme:/var/www/html/iotinc# git clone https://github.com/albertobeta/UberSimpleWebsockets.git
Cloning into 'UberSimpleWebsockets'...
remote: Counting objects: 24, done.
remote: Total 24 (delta 0), reused 0 (delta 0), pack-reused 24
Unpacking objects: 100% (24/24), done.
Checking connectivity... done.
root@openstackme:/var/www/html/iotinc# 
```

```sh
root@openstackme:/var/www/html//iotinc/UberSimpleWebsockets# ls
client-Chart.html  client-JustLog.html  LICENSE  README.md  send.pl  send.py
root@openstackme:/var/www/html//iotinc/UberSimpleWebsockets# 
```

# Final


http://104.236.227.50:9000/version?say=there