# Fix Nginx to handle high load by increasing the ULIMIT
exec { 'fix--for-nginx':
  command => 'sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 4096\"/" /etc/default/nginx && service nginx restart',
  path    => '/usr/local/bin/:/bin/:/usr/bin/:/usr/sbin/:/sbin/',
}
