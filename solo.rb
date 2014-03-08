root_path = ""
role_path File.join(root_path, "./roles")
environment_path File.join(root_path, "./environments")
cookbook_path ["./site-cookbooks", "cookbooks"].collect{|dir| File.join(root_path, dir)}
data_bag_path File.join(root_path, "./data_bags")
file_cache_path "/var/chef/cache"
log_level :debug
verbose_logging true
