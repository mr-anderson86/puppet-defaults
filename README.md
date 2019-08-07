# puppet-defaults

#### Table of Contents

1. [Module Description - What the module does and why it is useful](#module-description)
2. [Setup - The basics of getting started with defaults](#setup)
    * [What defaults affects](#what-defaults-affects)
3. [Other content](#other-content)
    * [Files](#files)
4. [Usage](#usage)
    * [Default usage](#default-usage)
    * [Usage with params](#usage-with-params)

## Module Description

This is a simple example of a defaults module for puppet, which installs default configuration on all nodes (via including it in all puppet manifests).

## Setup

### What defaults affects
* adding some ssh public key into the autorized_keys file
* installing vim
* installing git
* Setting timezone (default is Asia/Jerusalem)
* Setting ntpdate (with some default servers).

## Other content

### Files
* .bash_profile
* .bashrc

## Usage
### Default usage
```puppet
include defaults
```
### Usage with params
```puppet
class { 'defaults':
    timezone    => 'Asia/Jerusalem',
    ntp_servers => ['server1.ntp.org','server2.ntpnorg'],
}
```
