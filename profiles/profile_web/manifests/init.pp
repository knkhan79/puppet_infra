##Web Profile for setting up apache

class profile_web {

   class { '::apache': }
####Include php module
    include apache::mod::php

    firewall { '100 allow http and https access':
    dport   => [80, 443],
    proto  => tcp,
    action => accept,
  }
$packages = hiera('php')
package {$packages:
   ensure => installed,
   notify => Service['httpd'],
   }

}
