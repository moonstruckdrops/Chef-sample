#
# Cookbook Name:: moonstruckdrops
# Recipe:: development
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


# jenkins
if node["moonstruckdrops"]["yum"]["jenkins"]["managed"]
   case node[:platform]
   when "centos"
	  yum_repository node["moonstruckdrops"]["yum"]["jenkins"]["name"] do
		 description node["moonstruckdrops"]["yum"]["jenkins"]["description"]
		 baseurl node["moonstruckdrops"]["yum"]["jenkins"]["baseurl"]
		 gpgkey node["moonstruckdrops"]["yum"]["jenkins"]["gpgkey"]
		 gpgcheck node["moonstruckdrops"]["yum"]["jenkins"]["gpgcheck"]
		 enabled node["moonstruckdrops"]["yum"]["jenkins"]["enabled"]
		 action :create
	  end

	  node["moonstruckdrops"]["yum"]["jenkins"]["packages"].each do |package|
		 yum_package package do
			flush_cache [:before]
			action :install
		 end
	  end
   end
end

#include_recipe "yum-epel"
#if node["moonstruckdrops"]["virtual"]["managed"]
#   case node[:platform]
#   when "centos"
# 	  node["moonstruckdrops"]["virtual"]["group"]["packages"].each do |package|
# 		 yum_package package do
# 			action :install
# 		 end
# 	  end
#   end
#end
