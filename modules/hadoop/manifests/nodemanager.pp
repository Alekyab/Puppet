class hadoop::nodemanager inherits hadoop{
require hadoop

Exec{
        path => ["/usr/bin","/usr/sbin","/bin"],
    }


exec { 'start nodemanager':
    command => "/usr/lib/hadoop/hadoop-2.6.0/sbin/yarn-daemon.sh start nodemanager",
  }
}
