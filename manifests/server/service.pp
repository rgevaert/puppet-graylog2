class graylog2::server::service
{
  service {
    'graylog2-server':
      enable    => true,
      ensure    => running,
      hasstatus => false;
  }

}
