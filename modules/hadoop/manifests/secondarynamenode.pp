class hadoop::secondarynamenode inherits hadoop{
require hadoop
require hadoop::resourcemanager
Exec{
        path => ["/usr/bin","/usr/sbin","/bin"],
    }

exec { 'start secondarynamenode':
    command => "/usr/lib/hadoop/hadoop-2.6.0/sbin/hadoop-daemon.sh --script hdfs start secondarynamenode",
  }
}
