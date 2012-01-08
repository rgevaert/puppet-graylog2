# Class: graylog2
#
# This module manages graylog2
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class graylog2::server ( $mongodb_user = "grayloguser", $mongodb_password, $mongodb_host = "127.0.0.1", $mongodb_database = "graylog2",
                          $elasticsearch_host = "127.0.0.1" ) {

  include graylog2::server::pre
  include graylog2::server::config
  
  Class['graylog2::server::pre'] ->
    Class['graylog2::server::config']

}
