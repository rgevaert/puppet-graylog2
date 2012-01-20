# It is better to use your own syslogng odule.  This snippet doesn't
# notify the syslogng daemon.
class graylog2::syslogng ($graylog2_server = "0.0.0.0")
{
  file {
    '/etc/syslog-ng.d/graylog2.conf':
      ensure  => present,
      content => template('graylog2/syslog-ng.conf.erb');
  }
}
