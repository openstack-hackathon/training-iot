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

http://www.drdobbs.com/open-source/building-restful-apis-with-tornado/240160382


# Final

http://104.236.227.50:9000/version?say=there

```python
import tornado.httpserver
import tornado.websocket
import tornado.ioloop
from tornado.ioloop import PeriodicCallback
import tornado.web
from random import randint #Random generator
from datetime import date

#Config
port = 9000 #Websocket Port
timeInterval= 2000 #Milliseconds

value = 0

class WSHandler(tornado.websocket.WebSocketHandler):
        #check_origin fixes an error 403 with Tornado
        #http://stackoverflow.com/questions/24851207/tornado-403-get-warning-when-opening-websocket
    def check_origin(self, origin):
        return True

    def open(self):
                #Send message periodic via socket upon a time interval
        self.callback = PeriodicCallback(self.send_values, timeInterval)
        self.callback.start()

    def send_values(self):
                #Generates random values to send via websocket
        global value
        self.write_message(str(randint(1,10)) + ';' + str(randint(1,10)) + ';' + str(randint(1,10)) + ';' + str(value))

    def on_message(self, message):
        pass

    def on_close(self):
        self.callback.stop()

class VersionHandler(tornado.web.RequestHandler):
    def get(self):
        global value
        value = self.get_argument("value", "0")
        response = { 'version': '3.5.1',
                     'last_build':  date.today().isoformat(),
                     'path': self.request.path,
                     'value': value }
        self.write(response)

application = tornado.web.Application([
    (r'/', WSHandler),
    (r"/version", VersionHandler),
])

if __name__ == "__main__":
    http_server = tornado.httpserver.HTTPServer(application)
    http_server.listen(port)
    tornado.ioloop.IOLoop.instance().start()

```