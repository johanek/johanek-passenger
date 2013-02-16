# Class passenger::install
class passenger::install {
  package { 'mod_passenger':
    ensure => $passenger::version
  }
}
