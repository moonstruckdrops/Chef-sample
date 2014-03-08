My Chef Recipe
======================

Create cookbook
------
```
$knife cookbook create moonstruckdrops -o site-cookbooks/
```

Run
------
```
$mkdir cookbooks
$berks install --path=cookbooks/
$chef-solo -c solo.rb -j chef.json -E development
```

Third party cooknook(Berkshelf)
------
Install cookbook

```
$gem install berkshelf --no-rdoc --no-ri
$berks install --path=cookbooks/
```

Update cookbook
```
$berks update
```

Serverspec
------
```
$gem install serverspec --no-rdoc --no-ri
$serverspec-init
```
