# = Class: passenger
#
# This module installs passenger.
#
# It does this by adding the yum repo from stealthymonkeys.com, so only works on CentOS & friends
#
#== Requirements
# Modules: johanek-apache
# Yum: EPEL repository configured
#
# == Parameters
#
# [*version*]
#   Set to desired version. Default: latest
#
class passenger (
  $version = latest
){
  class { 'passenger::config': } ->
  class { 'passenger::install': }
}
