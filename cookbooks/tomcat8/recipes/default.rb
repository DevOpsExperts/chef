#
# Cookbook:: tomcat8
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe "tomcat8::user_group"
include_recipe "tomcat8::directories"
include_recipe "tomcat8::install_packages"
include_recipe "tomcat8::permissions"
include_recipe "tomcat8::service"
