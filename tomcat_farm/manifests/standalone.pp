node 'standalone' {
    class { 'java': }
    class { 'augeas': }

    if versioncmp($::augeasversion, '1.0.0') >= 0 {
    class { 'tomcat': }
    tomcat::instance { 'tomcat8-1':
      catalina_base => '/opt/apache-tomcat/tomcat8_01',
      source_url => 'http://mirror.sdunix.com/apache/tomcat/tomcat-8/v8.0.18/bin/apache-tomcat-8.0.18.tar.gz'
    }->
    tomcat::service { 'tomcat8_01':
      catalina_base => '/opt/apache-tomcat/tomcat8_01',
    }
    tomcat::instance { 'tomcat8-2':
      catalina_base => '/opt/apache-tomcat/tomcat8_02',
      source_url => 'http://mirror.sdunix.com/apache/tomcat/tomcat-8/v8.0.18/bin/apache-tomcat-8.0.18.tar.gz'
    }->
    tomcat::config::server { 'tomcat8-2':
      catalina_base => '/opt/apache-tomcat/tomcat8_02',
      port          => '8006',
    }->
    tomcat::config::server::connector { 'tomcat8-http':
      catalina_base         => '/opt/apache-tomcat/tomcat8_02',
      port                  => '8081',
      protocol              => 'HTTP/1.1',
      additional_attributes => {
        'redirectPort' => '8543'
      },
    }->
    tomcat::config::server::connector { 'tomcat8-ajp':
      catalina_base         => '/opt/apache-tomcat/tomcat8_02',
      port                  => '8010',
      protocol              => 'AJP/1.3',
      additional_attributes => {
        'redirectPort' => '8444'
      },
    }->
    tomcat::service { 'tomcat8_02':
      catalina_base => '/opt/apache-tomcat/tomcat8_02',
    }
    }
}
