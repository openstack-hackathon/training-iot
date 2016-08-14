# MQ Telemetry Transport

## Mosquitto

> Mosquitto is an open source (BSD licensed) message broker that implements the MQ Telemetry Transport protocol versions 3.1 and 3.1.1. MQTT provides a lightweight method of carrying out messaging using a publish/subscribe model.

>MQTT (a.k.a. mosquitto) is perfect for mobile and embedded devices because of its lightweight (in processing, memory management and bandwidth) messaging protocol. 

> For this protocol, notice that it lacks of encryption in its base, otherwise it would add an important overhead to the connection. Security at the application level requires a lot of work.

[Mosquitto Homepage](http://mosquitto.org/)

## Mosquitto Intel® Edison Setup

We should have all Mosquitto MQTT tools available in latest version of Linux Yocto based version

## Mosquitto MQTT Server/Broker

## Mosquitto Client

As subscribers

```sh
    root@board:~# mosquitto_sub -h test.mosquitto.org -p 1883 -t IoT101/#
```

As publishers

```sh
    root@board:~# mosquitto_pub -h test.mosquitto.org -p 1883 -t IoT101/all -m "Hello All Operators!"
```