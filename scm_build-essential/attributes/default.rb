default['scm_build-essential']['extra_services'] = [ 'telnet' , 'sysstat' ]

case node['platform_family']
when 'rhel'
default['scm_build-essential']['stop_services'] = [ 'cups','rpcbind','postfix','nfslock' ]
end

