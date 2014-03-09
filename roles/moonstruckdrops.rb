name "moonstruckdrops"
description "chef roles"
run_list "recipe[moonstruckdrops]"
env_run_lists(
   "_default" => ["recipe[moonstruckdrops]"],
   "production" => ["recipe[moonstruckdrops::production]"],
   "staging" => ["recipe[moonstruckdrops::staging]"],
   "testing" => ["recipe[moonstruckdrops::testing]"],
   "development" => ["recipe[moonstruckdrops::development]"]
   )
