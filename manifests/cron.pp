class r10k::cron(
  $ensure    = 'present',
  $frequency = 3,
  $user      = 'root',
  $group     = 0
) {

  include r10k
  include r10k::params

  cron { 'r10k full synchronization':
    ensure  => $ensure,
    user    => $user,
    command => "${r10k::params::r10k_bin} synchronize",
    minute  => interval($frequency, 60),
    require => Class['r10k'],
  }
}
