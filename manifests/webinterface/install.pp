class graylog2::webinterface::install
{
  package {
    'graylog2-web-interface':
      ensure => installed;
  }
}
