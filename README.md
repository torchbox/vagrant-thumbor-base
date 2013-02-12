vagrant-thumbor-base
===================

A Vagrant box based on Ubuntu precise32, running [thumbor](https://github.com/globocom/thumbor) 
built from the officially supported aptitude PPA.

By default the box is configured to run four instances of thumbor, load balanced by nginx and a redis storage backend.

Configuration
-------------
The defaults for configuring the service should be fine in general and you can just build, but you
can customise the installation.

To customise the default configuration the `etc` directory contains:

* `thumbor.conf.custom` for settings you're most likely to want to modify.
* `thumbor.port` to specify the port that the box will forward the service over (default 8888).
* `thumbor.instances` to specify the number of instances nginx will load balance (default 4).
* `thumbor.key` to specify the security key (up to 16 characters) used for signed URLs (default empty to generate a random key)

The `etc` directory also contains `thumbor.conf.default` (the other conf settings for thumbor), `thumbor.default` and `thumbor.nginx`. These can be edited but in general should be left alone.

Build instructions
------------------
To generate the .box file:

    ./build.sh

To install locally:

    vagrant box add vagrant-thumbor-base vagrant-thumbor-base.box
