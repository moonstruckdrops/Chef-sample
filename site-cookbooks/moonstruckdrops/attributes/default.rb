# package
default["moonstruckdrops"]["yum"]["base"]["packages"] = ["emacs", "wget", "make", "gcc", "rpm-build", "vnc-server", "git", "subversion", "samba"]
default["moonstruckdrops"]["yum"]["epel"]["install"] = false
default["moonstruckdrops"]["yum"]["epel"]["packages"] = ["bash_completion", "ngircd", "ntfs-3g"]
default["moonstruckdrops"]["yum"]["rpmforge"]["install"] = false
default["moonstruckdrops"]["yum"]["rpmforge"]["packages"] = ["tmux"]
default["moonstruckdrops"]["yum"]["remi"]["install"] = false
default["moonstruckdrops"]["yum"]["remi"]["packages"] = ["firefox"]

# jenkins
default["moonstruckdrops"]["yum"]["jenkins"]["install"] = false
default["moonstruckdrops"]["yum"]["jenkins"]["packages"] = ["jenkins"]
default["moonstruckdrops"]["yum"]["jenkins"]["name"] = "jenkins"
default["moonstruckdrops"]["yum"]["jenkins"]["description"] = "Jenkins repo"
default["moonstruckdrops"]["yum"]["jenkins"]["baseurl"] = "http://pkg.jenkins-ci.org/redhat"
default["moonstruckdrops"]["yum"]["jenkins"]["gpgkey"] = "http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key"
default["moonstruckdrops"]["yum"]["jenkins"]["gpgcheck"] = true
default["moonstruckdrops"]["yum"]["jenkins"]["enabled"] = false

# KVM
# http://docs.fedoraproject.org/en-US/Fedora/14/html/Software_Management_Guide/ch05s15.html
default["moonstruckdrops"]["virtual"]["install"] = false
default["moonstruckdrops"]["virtual"]["group"]["packages"] = ["@Virtualization", "@Virtualization Client", "@Virtualization Platform", "@Virtualization Tools"]

# X Window
default["moonstruckdrops"]["xwindow"]["install"] = false
default["moonstruckdrops"]["xwindow"]["group"]["packages"] = ["@X Window System", "@GNOME Desktop Environment", "@Desktop", "@Desktop Platform"]
default["moonstruckdrops"]["xwindow"]["font"]["packages"] = ["xorg-x11-font*"]
default["moonstruckdrops"]["xwindow"]["japanese"]["support"] = true
default["moonstruckdrops"]["xwindow"]["japanese"]["package"] = "@Japanese Support"
default["moonstruckdrops"]["xwindow"]["runlevel"] = 3
