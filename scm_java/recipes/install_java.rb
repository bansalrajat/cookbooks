



if platform_family?("debian")
	package 'unzip' do
	end
end


directory node['scm_java']['installation_path'] do
	owner 'root'
	group 'root'
	action :create
	mode 0755
end

log "loading data bag"
artifactory_user_details = data_bag_item("scm-chef-credentials",node['scm-chef-credentials']['artifactory-data-bag-item'])

log "http://#{artifactory_user_details['username']}:#{artifactory_user_details['password']}@#{node['scm_java']['artifactory_url']}/#{node['scm_java']['java_tar_name']}"
remote_file "#{node['scm_java']['installation_path']}/#{node['scm_java']['java_tar_name']}"  do
	source "http://#{artifactory_user_details['username']}:#{artifactory_user_details['password']}@#{node['scm_java']['artifactory_url']}/#{node['scm_java']['java_tar_name']}"
	owner 'root'
	group 'root'
	mode '0755'
end


