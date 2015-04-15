class hadoop::namenode inherits hadoop{
	
require hadoop

Exec{
	path => ["/usr/bin","/usr/sbin","/bin"],
    }

exec {'format namenode':
	command => "/usr/lib/hadoop/hadoop-2.6.0/bin/hadoop namenode -format"
}

exec { 'start namenode': 
    command => "/usr/lib/hadoop/hadoop-2.6.0/sbin/hadoop-daemon.sh --script hdfs start namenode",
    require => Exec['format namenode'],    
  }
}
