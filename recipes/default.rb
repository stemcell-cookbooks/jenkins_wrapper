#
# Cookbook Name:: jenkins_wrapper
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'git'
include_recipe 'apt::default'
include_recipe 'jenkins::java'
include_recipe 'jenkins::master'
include_recipe 'jenkins_wrapper::proxy'

jenkins_plugin 'git' do
  action :install
  retries 2
  retry_delay 30
end

jenkins_plugin 'groovy' do
  action :install
  retries 2
  retry_delay 30
end

jenkins_plugin 'job-dsl' do
  action :install
  retries 2
  retry_delay 30
end

jenkins_plugin 'google-login' do
  action :install
  retries 2
  retry_delay 30
end

jenkins_plugin 'powershell' do
  action :install
  retries 2
  retry_delay 30
end

jenkins_plugin 'packer' do
  action :install
  retries 2
  retry_delay 30
  notifies :restart, 'service[jenkins]', :immediately
end

