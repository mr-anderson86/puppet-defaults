class defaults (

  timezone    = $defaults::params::timezone,
  ntp_servers = $defaults::params::ntp_servers,

) inherits defaults::params {

  class { 'defaults::install' : 
    timezone    => $timezone,
    ntp_servers => $ntp_servers  
  }

}
