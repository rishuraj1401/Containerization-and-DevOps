current_dir = File.dirname(__FILE__)
node_name 'workstation'
client_key "#{current_dir}/workstation.pem"
chef_repo_path "#{current_dir}/.."
cookbook_path ["#{current_dir}/../cookbooks"]
