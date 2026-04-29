#
# Cookbook:: basics
# Recipe:: packages
#

# Update apt cache
apt_update 'update' do
  action :update
  frequency 86400
end

# Install essential packages
%w(vim htop wget curl git net-tools).each do |pkg|
  package pkg do
    action :install
  end
end

# Install specific version of Python
package 'python3' do
  action :install
  version '3.10.*'
end
