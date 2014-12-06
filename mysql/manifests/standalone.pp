node 'standalone' {
  class { '::mysql::server':
    root_password    => 'root',
    override_options => {
    'mysqld' => {
      'bind-address' => '0.0.0.0'
      }
    },
    users => {
        'root@%' => {
          ensure                   => 'present',
          max_connections_per_hour => '0',
          max_queries_per_hour     => '0',
          max_updates_per_hour     => '0',
          max_user_connections     => '0',
          password_hash            => '*81F5E21E35407D884A6CD4A731AEBFB6AF209E1B',
      },
    },
    grants => {
        'root@%/*.*' => {
        ensure     => 'present',
        options    => ['GRANT'],
        privileges => ['ALL'],
        table      => '*.*',
        user       => 'root@%',
      },
    },
    restart => true
  }
}
