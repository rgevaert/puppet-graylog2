class graylog2::server::pre
{
  class {
    'mongodb::server':
      auth => true;
  }

  package {
    'openjdk-6-jre':
      ensure => present;
  }
}
