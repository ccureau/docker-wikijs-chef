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
execute 'install wiki.js' do
  cwd node['wikijs']['installDir']
  command 'curl -sSo- https://wiki.js.org/install.sh | bash'
end

# set up configuration
template "#{node['wikijs']['installDir']}/config.js" do
  source 'config.js.erb'
  mode 0600
end
