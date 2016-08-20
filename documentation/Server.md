# Server

```
root@openstackme:~# pip install bokeh
root@openstackme:~# bokeh serve
2016-08-20 03:16:31,259 Starting Bokeh server version 0.12.1
2016-08-20 03:16:31,278 Starting Bokeh server on port 5006 with applications at paths ['/']
2016-08-20 03:16:31,278 Starting Bokeh server with process id: 3115
2016-08-20 03:17:02,778 Rejected connection from host '104.236.227.50:5006' because it is not in the --host whitelist
2016-08-20 03:17:02,779 403 GET / (187.201.32.249) 1.69ms
2016-08-20 03:17:02,922 404 GET /favicon.ico (187.201.32.249) 0.79ms
```

```
root@openstackme:~# bokeh serve --host 104.236.227.50:5006
2016-08-20 03:20:58,618 Starting Bokeh server version 0.12.1
2016-08-20 03:20:58,629 Starting Bokeh server on port 5006 with applications at paths ['/']
2016-08-20 03:20:58,629 Starting Bokeh server with process id: 3135
2016-08-20 03:21:04,641 200 GET / (187.201.32.249) 13.19ms
2016-08-20 03:21:04,947 200 GET /static/css/bokeh.min.css?v=aebc31f7f85efd69748ac7065c815c7f (187.201.32.249) 198.14ms
2016-08-20 03:21:05,400 200 GET /static/js/bokeh-compiler.min.js?v=dbbd0d5aebe5ef1e92d86b8e1120e516 (187.201.32.249) 552.65ms
2016-08-20 03:21:05,706 200 GET /static/js/bokeh-widgets.min.js?v=6d62f070a9287feeed92a3f269aef02f (187.201.32.249) 934.48ms
2016-08-20 03:21:06,372 200 GET /static/css/bokeh-widgets.min.css?v=522d6173498a389c7f74f0e675195da0 (187.201.32.249) 1614.70ms
2016-08-20 03:21:06,875 200 GET /static/js/bokeh.min.js?v=60bb5dd2f5e2b46c72b11ddd9b9c362a (187.201.32.249) 2110.58ms
2016-08-20 03:21:08,011 WebSocket connection opened
2016-08-20 03:21:08,011 ServerConnection created
```

```
root@openstackme:~# apt-get update
root@openstackme:~# apt-get install -y apache2
root@openstackme:~# apt-get install -y libapache2-mod-wsgi
root@openstackme:~# apt-get install -y python-pip
root@openstackme:~# pip install flask
```

```
root@openstackme:~# cd /var/www/html/
root@openstackme:/var/www/html# ls
index.html
root@openstackme:/var/www/html# mkdir flask
root@openstackme:/var/www/html# cd flask
root@openstackme:/var/www/html/flask# echo "Hello World" > index.html
root@openstackme:/var/www/html/flask# 
```

```sh
root@openstackme:~# pip install tornado
```

https://github.com/albertobeta/UberSimpleWebsockets

```
root@openstackme:/var/www/html# git clone https://github.com/albertobeta/UberSimpleWebsockets.git
Cloning into 'UberSimpleWebsockets'...
remote: Counting objects: 24, done.
remote: Total 24 (delta 0), reused 0 (delta 0), pack-reused 24
Unpacking objects: 100% (24/24), done.
Checking connectivity... done.
root@openstackme:/var/www/html# 
```

```sh
root@openstackme:/var/www/html/UberSimpleWebsockets# ls
client-Chart.html  client-JustLog.html  LICENSE  README.md  send.pl  send.py
root@openstackme:/var/www/html/UberSimpleWebsockets# 
```

http://www.drdobbs.com/open-source/building-restful-apis-with-tornado/240160382

```sh
root@openstackme:/var/www/html/UberSimpleWebsockets# pip install pyrestful
```

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