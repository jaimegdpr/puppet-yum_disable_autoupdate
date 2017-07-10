class yum_disable_autoupdate {

    class {'yum_disable_autoupdate::config':}
    class {'yum_disable_autoupdate::service':}

}
