class graylog2::webinterface( $mongodb_user = "grayloguser", $mongodb_password, $mongodb_host = "127.0.0.1", $mongodb_database = "graylog2")
{
  include graylog2::webinterface::install
  include graylog2::webinterface::config

  Class['graylog2::webinterface::install'] -> Class['graylog2::webinterface::config']
}
