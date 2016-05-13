#
# Cookbook Name:: scm_build-essential
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#log "Stopping Services : #{node['scm_build-essential']['stop_services']}"
if node['scm_build-essential'].attribute?('stop_services')
log "Attribute stop_services exists : #{node['scm_build-essential']['stop_services']}"
        node['scm_build-essential']['stop_services'].each do |service|
log "Stopping service #{service}"
                service "Stop Services" do
                        service_name "#{service}"
			action [:stop,:disbale]
                end
        end
end


log "scm_build-essential::default recipe execution started"
include_recipe 'apt' if platform_family?("debian")
include_recipe "build-essential::default"
log "build-essential:default recipe execution finished."

if !node['scm_build-essential']['extra_services'].empty?
	node['scm_build-essential']['extra_services'].each do |service|
log "Installing Service #{service}"
		package 'Install Services' do
			package_name "#{service}"
		end
	end
end

