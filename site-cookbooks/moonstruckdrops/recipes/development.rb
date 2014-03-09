#
# Cookbook Name:: moonstruckdrops
# Recipe:: development
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


# jenkins
if node["moonstruckdrops"]["yum"]["jenkins"]["install"]
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
            options "--enablerepo=#{node["moonstruckdrops"]["yum"]["jenkins"]["name"]}"
            flush_cache [:before]
            action :install
         end
      end
   end
end

# X Window
if node["moonstruckdrops"]["xwindow"]["install"]
   case node[:platform]
   when "centos"
      node["moonstruckdrops"]["xwindow"]["group"]["packages"].each do |package|
         yum_package package do
            flush_cache [:before]
            action :install
         end
      end

      yum_package node["moonstruckdrops"]["xwindow"]["font"]["packages"] do
         action :install
      end

      if node["moonstruckdrops"]["xwindow"]["japanese"]["support"]
         yum_package node["moonstruckdrops"]["xwindow"]["japanese"]["package"] do
            flush_cache [:before]
            action :install
         end
      end

      template "/etc/inittab" do
         source "inittab.erb"
         owner "root"
         group "root"
         mode "0644"
         variables({
               :runlevel => node["moonstruckdrops"]["xwindow"]["runlevel"]
            })
      end
   end
end

# KVM
if node["moonstruckdrops"]["virtual"]["install"]
   case node[:platform]
   when "centos"
      node["moonstruckdrops"]["virtual"]["group"]["packages"].each do |package|
         yum_package package do
            flush_cache [:before]
            action :install
         end
      end
   end
end

# epel package
if node["moonstruckdrops"]["yum"]["epel"]["install"]
   include_recipe "yum-epel"

   node["moonstruckdrops"]["yum"]["epel"]["packages"].each do |package|
      yum_package package do
         options "--enablerepo=epel"
         flush_cache [:before]
         action :install
      end
   end
end

# iptables

