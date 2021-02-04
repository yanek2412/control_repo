node default {
  file {'/root/README':
    ensure => file,
    content => 'This is test of content',
    owner => 'root',
 
}
