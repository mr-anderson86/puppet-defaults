# puppet-defaults

## Description:

This is a simple example of a defaults module for puppet, which installs default configuration on all nodes (via including it in all puppet manifests).

## Installations and configuration:
* adding some ssh public key into the autorized_keys file
* installs vim
* install git
* Setting timezone (default is Asia/Jerusalem)
* Setting ntpdate (with some default servers).

## Other content:
It also contains a few files if anyone wants to include in his/her manifest:
* .bash_profile
* .bashrc

## Usage:
### Default usage:
```puppet
include defaults
```
