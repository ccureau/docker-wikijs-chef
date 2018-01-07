#
# Cookbook:: wikijs
# Recipe:: _install_wikijs
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# set up directory
directory node['wikijs']['installDir'] do
  action :create
  recursive true
end

# install wikijs
execute 'install wiki.js using npm' do
  cwd node['wikijs']['installDir']
  command 'npm install wiki.js@latest'
end

# set up configuration
template "#{node['wikijs']['installDir']}/config.js" do
  source 'config.js.erb'
  mode 0600
end
