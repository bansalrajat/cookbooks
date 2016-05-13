#
# Cookbook Name:: scm_selinux
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info 'hc_selinux::default recipe execution started'

include_recipe 'selinux::disabled'

Chef::Log.info 'hc_selinux::default recipe execution finished'
