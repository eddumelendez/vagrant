node 'standalone' {
  class { 'tomcat': }
  class { 'java': }

    tomcat::instance { 'tomcat8-1':
      catalina_base => '/opt/apache-tomcat/tomcat8_01',
      source_url => 'http://mirror.sdunix.com/apache/tomcat/tomcat-8/v8.0.18/bin/apache-tomcat-8.0.18.tar.gz'
    }->
    tomcat::service { 'tomcat8_01':
      catalina_base => '/opt/apache-tomcat/tomcat8_01',
    }
}
