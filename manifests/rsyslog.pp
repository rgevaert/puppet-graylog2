# It is better to use your own rsyslog module.  This snippet doesn't
# notify the rsyslog daemon.
class graylog2::rsyslog ($graylog2_server = "0.0.0.0")
{
  file {
    '/etc/rsyslog.d/graylog2.conf':
      ensure  => present,
      content => template('graylog2/rsyslog.conf.erb');
  }
}
