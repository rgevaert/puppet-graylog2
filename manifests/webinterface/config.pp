class graylog2::webinterface::config
{
  file {
    '/opt/graylog2-web-interface/config/mongoid.yml':
      ensure  => present,
      content => template('graylog2/mongoid.yml.erb');
  }
}
