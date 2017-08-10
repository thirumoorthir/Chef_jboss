#
# Cookbook Name:: jboss
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

package 'tree' do
  action :install
end

remote_file '/tmp/splunkforwarder-6.6.2-4b804538c686-linux-2.6-x86_64.rpm' do
  source 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=6.6.2&product=universalforwarder&filename=splunkforwarder-6.6.2-4b804538c686-linux-2.6-x86_64.rpm&wget=true'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

 rpm_package 'splunkforwarder' do
   action :install
   source '/tmp/splunkforwarder-6.6.2-4b804538c686-linux-2.6-x86_64.rpm'
  end
package 'java-1.8.0-openjdk.x86_64'

