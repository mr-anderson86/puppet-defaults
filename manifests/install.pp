class defaults {

  ssh_autorized_key { 'someuser@somehost' :
    ensure    => present,
    user      => 'someuser',
    type      => 'ssh-rsa',
    key       => 'SomeSshPublicKeyWhatSoEverItIsSupposedToBeVeryVeryVeryLong',  
  }
  
  package { 'vim' :
    ensure    => present,
  }

  package { 'git' :
    ensure    => present,
  }

  # https://forge.puppet.com/saz/timezone
  class { 'timezone':
    timezone  => 'Asia/Jerusalem',
  }

  # Just incase you want to use ntpdate
  # https://forge.puppet.com/saz/ntp
  class { 'ntp::ntpdate' 
      server_list => ['server1.ntp.org','server2.ntpnorg'],
  }

}
