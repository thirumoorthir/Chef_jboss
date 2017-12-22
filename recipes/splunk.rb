package 'java-1.8.0-openjdk.x86_64'
remote_file '/tmp/splunkforwarder-7.0.1-2b5b15c4ee89-Linux-x86_64.tgz' do
  source 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=linux&version=7.0.1&product=universalforwarder&filename=splunkforwarder-7.0.1-2b5b15c4ee89-Linux-x86_64.tgz&wget=true'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end


bash 'extract_module' do
  cwd ::File.dirname(/opt)
  code <<-EOH
    tar xzf /tmp/splunkforwarder-7.0.1-2b5b15c4ee89-Linux-x86_64.tgz -C /opt
    EOH
  not_if { ::File.exist?(/opt/splunkforwarder)
end
