class graylog2::server::config
{
  file {
    '/etc/graylog2.conf':
      ensure  => present,
      content => template('graylog2/graylog2.conf.erb'),
      owner   => root,
      group   => root,
      mode    => 600;
  }
}
