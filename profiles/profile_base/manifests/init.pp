###Profile Base

class profile_base {

	class { '::ntp':
    servers => [ '0.pool.ntp.org', '2.centos.pool.ntp.org', '1.rhel.pool.ntp.org'],
  }
	class { '::firewall': }

$packages = lookup('dev_packages')
package {$packages:
   ensure => installed,
   }


} 
