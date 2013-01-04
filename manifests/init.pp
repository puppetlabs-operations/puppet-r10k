class r10k($configfile, $ensure = 'present') {

  package { 'r10k':
    ensure   => $ensure,
    provider => gem,
  }

  file { '/etc/r10k.yaml':
    ensure => present,
    owner  => root,
    group  => 0,
    source => $configfile,
  }
}
