class defaults::install (

  timezone    = $defaults::params::timezone,
  ntp_servers = $defaults::params::ntp_servers,

) {

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
    timezone  => "$timezone",
  }

  # Just incase you want to use ntpdate
  # https://forge.puppet.com/saz/ntp
  class { 'ntp::ntpdate' 
      server_list => $ntp_servers,
      require     => Class['timezone'],
  }

}
