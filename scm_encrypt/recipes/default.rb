#
# Cookbook Name:: scm_encrypt
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
enc_key=''
key_name = 'encrypted_data_bag_secret'

	enc_key = data_bag_item('scm-chef-credentials','scm_enc_db_secret')['key']


file "/etc/chef/#{key_name}" do
	content enc_key
	sensitive true
	owner 'root'
	group 'root'
	mode '0600'
	action 'create'

end
log 'scm_encrypt:: default execution finished...'
