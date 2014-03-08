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
$berks install --path=cookbooks/
```

Update cookbook
```
$berks update
```

