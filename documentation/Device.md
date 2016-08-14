# Device

```sh
root@edison:~# curl https://raw.githubusercontent.com/xe1gyq/openstack/master/device/setup.sh -o - | sh
```
```sh
Welcome to Xe1Gyq Openstack Device Playground

--2016-08-14 17:58:52--  https://launchpad.net/python-weather-api/trunk/0.3.8/+download/pywapi-0.3.8.tar.gz
Resolving launchpad.net... 91.189.89.223, 91.189.89.222
Connecting to launchpad.net|91.189.89.223|:443... connected.
HTTP request sent, awaiting response... 302 Moved Temporarily
Location: https://launchpadlibrarian.net/166317636/pywapi-0.3.8.tar.gz [following]
--2016-08-14 17:59:05--  https://launchpadlibrarian.net/166317636/pywapi-0.3.8.tar.gz
Resolving launchpadlibrarian.net... 91.189.89.228, 91.189.89.229
Connecting to launchpadlibrarian.net|91.189.89.228|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 25166 (25K) [application/x-tar]
Saving to: 'pywapi-0.3.8.tar.gz'

100%[======================================>] 25,166       128KB/s   in 0.2s   
2016-08-14 17:47:40 (128 KB/s) - 'pywapi-0.3.8.tar.gz' saved [25166/25166]                             
pywapi-0.3.8/examples/pywapi-countries-example.py
pywapi-0.3.8/setup.py
pywapi-0.3.8/MANIFEST
pywapi-0.3.8/examples/
pywapi-0.3.8/examples/pywapi-noaa-example.py
pywapi-0.3.8/examples/pywapi-example.py
pywapi-0.3.8/pywapi.pyc
pywapi-0.3.8/LICENSE
pywapi-0.3.8/examples/pywapi-weather-com-example.py
pywapi-0.3.8/pywapi.py
pywapi-0.3.8/examples/pywapi-cities-example.py
pywapi-0.3.8/CHANGELOG
pywapi-0.3.8/README
pywapi-0.3.8/
pywapi-0.3.8/examples/pywapi-yahoo-example.py
pywapi-0.3.8/examples/get-weather.py
running build
running build_py
creating build
creating build/lib
copying pywapi.py -> build/lib
running install
running build
running build_py
running install_lib
running install_egg_info
Removing /usr/lib/python2.7/site-packages/pywapi-0.3.8-py2.7.egg-info
Writing /usr/lib/python2.7/site-packages/pywapi-0.3.8-py2.7.egg-info
Cloning into 'openstack'...
remote: Counting objects: 476, done.
remote: Compressing objects: 100% (162/162), done.
remote: Total 476 (delta 94), reused 0 (delta 0), pack-reused 307
Receiving objects: 100% (476/476), 54.71 KiB | 0 bytes/s, done.
Resolving deltas: 100% (257/257), done.
Checking connectivity... done.
/usr/lib/python2.7/site-packages/pip/_vendor/requests/packages/urllib3/util/ssl_.py:318: SNIMissingWarning: An HTTPS request has been.
  SNIMissingWarning
/usr/lib/python2.7/site-packages/pip/_vendor/requests/packages/urllib3/util/ssl_.py:122: InsecurePlatformWarning: A true SSLContext o.
  InsecurePlatformWarning
Requirement already up-to-date: pip in /usr/lib/python2.7/site-packages
Downloading http://iotdk.intel.com/repos/3.5/intelgalactic/opkg/i586//Packages.
Updated list of available packages in /var/lib/opkg/iotkit.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/all/Packages.
Updated list of available packages in /var/lib/opkg/iotdk-all.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/core2-32/Packages.


```


