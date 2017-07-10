class yum_disable_autoupdate::service {

        service { 'yum-autoupdate':
            ensure => stopped,
            enable => false,
        }

}
