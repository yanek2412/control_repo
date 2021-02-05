node default {
  file {'/root/README':
    ensure => file,
    content => 'This is test of content',
    owner => 'root',
 
}
node 'master.puppet.vm' {
  include role::master_server
}
