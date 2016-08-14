# MQ Telemetry Transport

## Mosquitto

> Mosquitto is an open source (BSD licensed) message broker that implements the MQ Telemetry Transport protocol versions 3.1 and 3.1.1. MQTT provides a lightweight method of carrying out messaging using a publish/subscribe model.

>MQTT (a.k.a. mosquitto) is perfect for mobile and embedded devices because of its lightweight (in processing, memory management and bandwidth) messaging protocol. 

> For this protocol, notice that it lacks of encryption in its base, otherwise it would add an important overhead to the connection. Security at the application level requires a lot of work.

[Mosquitto Homepage](http://mosquitto.org/)

## Mosquitto Client Open Server

We should have all Mosquitto MQTT tools available in latest version of Linux Yocto based version

As subscribers

```sh
root@edison:~# mosquitto_sub -h test.mosquitto.org -p 1883 -t IoT101/#
```

As publishers

```sh
root@edison:~# mosquitto_pub -h test.mosquitto.org -p 1883 -t IoT101/all -m "Hello All Operators!"
```

## Mosquitto Server/Broker

```sh
user@host:~$ sudo apt-get update
user@host:~$ sudo apt-get install mosquitto
user@host:~$ sudo update-rc.d mosquitto defaults
user@host:~$ sudo /etc/init.d/mosquitto start
```

## Mosquitto Client Open Server

We should have all Mosquitto MQTT tools available in latest version of Linux Yocto based version

As subscribers

```sh
root@edison:~# mosquitto_sub -h test.mosquitto.org -p 1883 -t IoT101/#
```

As publishers

```sh
root@edison:~# mosquitto_pub -h test.mosquitto.org -p 1883 -t IoT101/all -m "Hello All Operators!"
```

