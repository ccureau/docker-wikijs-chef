#
# Cookbook:: wikijs
# Recipe:: _install_wikijs
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# install wikijs
execute 'install wiki.js using npm' do
    command 'npm install wiki.js@latest'
end

# set up directory
directory node['wikijs']['installDir'] do
  action :create
  recursive :true
end

# set up configuration
template "#{node['wikijs']['installDir']}/config.js" do
  source 'config.js.erb'
  mode 0600
end
