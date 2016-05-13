#
# Cookbook Name:: scm_java
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'curl'
include_recipe 'tarball::default'
include_recipe 'scm_java::install_java'
