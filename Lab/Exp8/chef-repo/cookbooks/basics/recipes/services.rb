#
# Cookbook:: basics
# Recipe:: services
#

# Ensure SSH is running
service 'ssh' do
  action [:enable, :start]
end

# Create a custom systemd service
template '/etc/systemd/system/demo.service' do
  source 'demo.service.erb'
  owner 'root'
  group 'root'
  mode '0644'
  notifies :run, 'execute[systemctl daemon-reload]', :immediately
end

execute 'systemctl daemon-reload' do
  command 'systemctl daemon-reload'
  action :nothing
end

service 'demo' do
  action [:enable, :start]
  subscribes :restart, 'template[/etc/systemd/system/demo.service]'
end
