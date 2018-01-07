#
# Cookbook:: wikijs
# Recipe:: _config_supervisord
#
# Copyright:: 2018, Chris Cureau, All Rights Reserved.

template '/etc/supervisord.d/wikijs.ini' do
  source 'wikijs.ini.erb'
  mode 0600
  owner 'root'
  group 'root'
end
