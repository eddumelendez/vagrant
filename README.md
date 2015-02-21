* [Puppet](http://puppetlabs.com/misc/download-options)
* [Vagrant](https://www.vagrantup.com/downloads.html)
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)


vagrant box add centos64min http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20131103.box

## mongodb

```
cd mongodb
puppet module install puppetlabs-mongodb --target-dir modules
vagrant up standalone
```

## mysql

```
cd mysql
puppet module install puppetlabs-mysql --target-dir modules
vagrant up standalone
```

## tomcat

```
cd tomcat
puppet module install puppetlabs-tomcat --target-dir modules
vagrant up standalone
```
