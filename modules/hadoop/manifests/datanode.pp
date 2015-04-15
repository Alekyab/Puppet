class hadoop::datanode inherits hadoop{
require hadoop

Exec{
        path => ["/usr/bin","/usr/sbin","/bin"],
    }


exec { 'start datanode':
    command => "/usr/lib/hadoop/hadoop-2.6.0/sbin/hadoop-daemon.sh --script hdfs start datanode",
  }
}
