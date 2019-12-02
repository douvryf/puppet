# Set up regular Puppet runs

file { '/usr/local/bin/run-puppet':
   source   => '/etc/puppetlabs/code/environments/production/files/run-puppet.sh',
   mode     => '0755',
   before   => Cron['run-puppet'],
}

cron { 'run-puppet':
   command  => '/usr/local/bin/run-puppet',
   hour     => '*',
   minute   => [0, 15, 30, 45],
}
