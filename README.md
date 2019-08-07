# puppet-defaults

## Description:

This is a simple example of a defaults module for puppet, which installs default configuration on all nodes (via including it in all puppet manifests).

## Installations and configuration:
* adding some ssh public key into the autorized_keys file
* installing vim
* installing git
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
### Usage with params:
```puppet
class { 'defaults':
    timezone    => 'Asia/Jerusalem',
    ntp_servers => ['server1.ntp.org','server2.ntpnorg'],
}
```
