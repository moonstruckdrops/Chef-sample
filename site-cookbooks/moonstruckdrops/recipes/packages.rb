#
# Cookbook Name:: moonstruckdrops
# Recipe:: packages
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

yum_package "emacs" do
   flush_cache [:before]
   action :install
end
