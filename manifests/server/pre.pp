class graylog2::server::pre
{
  if( $mongodb_host == "127.0.0.1")
  {
    class {
      'mongodb::server':
        auth => true;
    }
  }

  if( $elasticsearch_host == "127.0.0.1")
  {
    include elasticsearch
  }
}
