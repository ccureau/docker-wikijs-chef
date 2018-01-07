#
# Cookbook:: wikijs
# Recipe:: default
#
# Copyright:: 2018, Chris Cureau, All Rights Reserved.

include_recipe 'wikijs::_config_supervisord'
include_recipe 'wikijs::_install_wikijs'
