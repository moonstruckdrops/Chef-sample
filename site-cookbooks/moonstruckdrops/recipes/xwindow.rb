#
# Cookbook Name:: moonstruckdrops
# Recipe:: xwindow
#
# Copyright 2014, moonstruckdrops
#
# All rights reserved - Do Not Redistribute
#


return unless node["moonstruckdrops"]["xwindow"]["install"]

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
