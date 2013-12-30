# Class passenger::config
class passenger::config {

  File {
    owner => root,
    group => root,
    mode  => '0644'
  }

  yumrepo { 'passenger':
    descr     => 'Passenger',
    baseurl   => 'http://passenger.stealthymonkeys.com/rhel/$releasever/$basearch',
    enabled   => 1,
    gpgcheck  => 1,
    gpgkey    => 'http://passenger.stealthymonkeys.com/RPM-GPG-KEY-stealthymonkeys.asc'
  }

  file { '/etc/httpd/conf.d/10-passenger.conf':
    ensure  => present,
    source  => 'puppet:///modules/passenger/passenger.conf',
    require => Class['apache::install'],
    notify  => Class['apache::service']
  }

}
