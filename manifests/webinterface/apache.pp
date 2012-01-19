class graylog2::webinterface::apache
{
  package {
    'apache2':
      ensure => installed;
    'libapache2-mod-passenger':
      ensure => installed;
    'bundler':
      ensure => installed,
      provider => gem;
  }
  
  file {
    '/etc/apache2/sites-enabled/000-default':
      ensure  => present,
      require => Package['libapache2-mod-passenger'],
      content => template('graylog2/vhost.erb');
  }
}
