# -*- mode: ruby -*-
# vi: set ft=ruby :

include common::basic
include ruby::install
include mysql::server

exec {'add_group_rvm_in_user_admin':
    unless   => 'grep -Ec rvm.*:admin /etc/group',
    command  => 'usermod -aG rvm admin',
    path     => ['/bin', '/usr/sbin'],
    require  => Class['common::basic']
}

file {'/home/admin/.bash_login':
    owner   => 'admin',
    group   => 'admin',
    content => 'rvm use ruby-2.0.0-p247 && echo "RVM configurado para utilizar a versao ruby-2.0.0-p247"'
}

asdfnabdfyasd fasd bfasdfasf