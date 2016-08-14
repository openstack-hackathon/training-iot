# Main

## missing credentials

```sh
root@edison:~/openstack/device# python main.py 
Traceback (most recent call last):
  File "main.py", line 53, in <module>
    credential = credentials.get("telegram", "token")
  File "/usr/lib/python2.7/ConfigParser.py", line 607, in get
    raise NoSectionError(section)
ConfigParser.NoSectionError: No section: 'telegram'
Exiting
Exception KeyError: KeyError(-1217222912,) in <module 'threading' from '/usr/lib/python2.7/threading.pyc'> ignored
root@edison:~/openstack/device# 
```

## credentials setup

```sh
root@edison:~/openstack/device# nano credentials.config
[telegram]
token=227111423:.......................................
root@edison:~/openstack/device# 
```

## directory structure

```sh
root@edison:~/openstack/device# ls
credentials.config  main.py            requirements.pip
iot101inc.py        requirements.opkg  setup.sh
root@edison:~/openstack/device# 
```

## main execution

```sh
root@edison:~/openstack/device# python main.py 
/usr/lib/python2.7/site-packages/urllib3/util/ssl_.py:318: SNIMissingWarning: An HTTPS request has been made, but the SNI (Subject Na.
  SNIMissingWarning
/usr/lib/python2.7/site-packages/urllib3/util/ssl_.py:122: InsecurePlatformWarning: A true SSLContext object is not available. This p.
  InsecurePlatformWarning
/usr/lib/python2.7/site-packages/urllib3/util/ssl_.py:122: InsecurePlatformWarning: A true SSLContext object is not available. This p.
  InsecurePlatformWarning
  
Go to section "main interaction through telegram bot"
  
^Z
[1]+  Stopped(SIGTSTP)        python main.py
root@edison:~/openstack/device# 
```

## main interaction through telegram bot

Interact with your Bot using the Web Telegram Org Application

## main source code

```python

```