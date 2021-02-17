class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD1EO+LRhy8eibIKndVEBMHaEkxV8PNJoZfHrwYMFt8+SjesyqumWLOe5+GG+Eh3PuY6nmSDJ52c9JpfR3nqVr+xgC87vfa4HuD214dXswc23dxGdjzCGhaTfnKHi47GUoTVVT8DWJBRC7QGRXmpqssCg9r2HRpVZLkAG2c3KLWgiFZbfrQddt+ogntzZk4wuKUGVReuRC4URK3ZUXxkvAte/HxmCmQpsvVggK6dmuI71zxE/i/3gsZqqe3Tc5Ou7zNiaZBNW8ZdYPQd7BwRJHgiHC4TiegdKW52r/mHLFDQnZEmQNYOtYSPk8PeMK/rgb58EZue45fghd1pI6Daw6B',
	}  
}














