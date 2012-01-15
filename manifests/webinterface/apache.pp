class graylog2::webinterface::apache
{
  package {
    'apache2':
      ensure => installed;
    'libapache2-mod-passenger':
      ensure => installed;
  }
}
