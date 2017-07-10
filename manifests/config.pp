class yum_disable_autoupdate::config {

        file { '/etc/sysconfig/yum-autoupdate':
            ensure => present,
        }

        file_line { 'disable_autoupdate':
            ensure => present,
            path => '/etc/sysconfig/yum-autoupdate',
            line => 'YUMONBOOT=0',
            match => '^YUMONBOOT=1',
            require => File['/etc/sysconfig/yum-autoupdate'],
        }

}
