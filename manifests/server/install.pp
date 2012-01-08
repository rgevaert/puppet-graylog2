class graylog2::server::install
{
  package {
    graylog2-server:
      ensure => installed;
  }

  file {
    '/etc/init.d/graylog2-server':
      ensure => present,
      source => 'puppet:///modules/graylog2/graylog2-server.init';
  }
}
