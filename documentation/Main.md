# Main

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