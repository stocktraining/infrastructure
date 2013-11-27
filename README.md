Infrastructure
==============

This is the infrastructure / vagrant portion for the Stock Training team.

Assumptions
===========

I assume that you have Vagrant [1.3.5](http://downloads.vagrantup.com/tags/v1.3.5).

Further, you should also have [VirtualBox 4.3.2](https://www.virtualbox.org/wiki/Downloads).

The Box
=======

We are using Ubuntu Server 13.04 x64 Raring Ringtail (VirtualBox Guest Additions 4.2.12, Chef 11.4.4, Puppet 2.7.18).

To login to the box, username is 'vagrant' and password is 'vagrant.'

Once you've logged in, run these commands:

cd /vagrant
sudo puppet apply --modulepath=modules manifests/default.pp

