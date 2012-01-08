class graylog2::webinterface
{
#  $packages = ['ruby1.8','libopenssl-ruby','ruby-dev','ruby','rubygems']

#  package {
#    $packages:
#      ensure => installed;
#  }

  file {
    '/opt/graylog2-web-interface-0.9.6':
      source  => 'puppet:///modules/graylog2/graylog2-web-interface-0.9.6',
      recurse => true,
      ensure  => directory;
  }
}
