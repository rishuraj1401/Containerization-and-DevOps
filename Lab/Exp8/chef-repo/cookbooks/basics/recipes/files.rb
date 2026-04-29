#
# Cookbook:: basics
# Recipe:: files
#

# Create test directory
directory '/opt/chef-demo' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

# Create file with content using template
file '/opt/chef-demo/README.md' do
  content <<~EOH
    # Chef Managed System
    ======================
    Hostname: #{node['hostname']}
    IP Address: #{node['ipaddress']}
    OS: #{node['platform']} #{node['platform_version']}
    Managed by: Chef
    Last Converged: #{Time.now}
  EOH
  mode '0644'
  action :create
end

# Copy file from cookbook
cookbook_file '/opt/chef-demo/welcome.txt' do
  source 'welcome.txt'
  mode '0644'
  action :create
end
