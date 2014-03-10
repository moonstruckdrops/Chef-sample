#
# Cookbook Name:: moonstruckdrops
# Recipe:: jenkins
#
# Copyright 2014, moonstruckdrops
#
# All rights reserved - Do Not Redistribute
#

return unless node["moonstruckdrops"]["yum"]["jenkins"]["install"]

case node['platform_family']
when 'rhel', 'fedora'

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
         options "--enablerepo=#{node["moonstruckdrops"]["yum"]["jenkins"]["name"]}"
         flush_cache [:before]
         action :install
      end
   end
end

