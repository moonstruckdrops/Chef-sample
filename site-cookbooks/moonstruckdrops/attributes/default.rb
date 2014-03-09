# repository
default["moonstruckdrops"]["yum"]["remi"]["managed"] = false
default["moonstruckdrops"]["yum"]["remi"]["name"] = "remi"
default["moonstruckdrops"]["yum"]["remi"]["description"] = "Les RPM de remi pour Enterprise Linux 6 - $basearch"
default["moonstruckdrops"]["yum"]["remi"]["baseurl"] = "http://rpms.famillecollet.com/enterprise/6/remi/$basearch/"
default["moonstruckdrops"]["yum"]["remi"]["mirrorlist"] = "http://rpms.famillecollet.com/enterprise/6/remi/mirror"
default["moonstruckdrops"]["yum"]["remi"]["gpgkey"] = "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi"
default["moonstruckdrops"]["yum"]["remi"]["gpgcheck"] = true
default["moonstruckdrops"]["yum"]["remi"]["enabled"] = false

default["moonstruckdrops"]["yum"]["remi-php55"]["managed"] = false
default["moonstruckdrops"]["yum"]["remi-php55"]["name"] = "remi-php55"
default["moonstruckdrops"]["yum"]["remi-php55"]["description"] = "Les RPM de remi de PHP 5.5 pour Enterprise Linux 6 - $basearch"
default["moonstruckdrops"]["yum"]["remi-php55"]["baseurl"] = "http://rpms.famillecollet.com/enterprise/6/php55/$basearch/"
default["moonstruckdrops"]["yum"]["remi-php55"]["mirrorlist"] = "http://rpms.famillecollet.com/enterprise/6/php55/mirror"
default["moonstruckdrops"]["yum"]["remi-php55"]["gpgkey"] = "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi"
default["moonstruckdrops"]["yum"]["remi-php55"]["gpgcheck"] = true
default["moonstruckdrops"]["yum"]["remi-php55"]["enabled"] = false

default["moonstruckdrops"]["yum"]["remi-php56"]["managed"] = false
default["moonstruckdrops"]["yum"]["remi-php56"]["name"] = "remi-php56"
default["moonstruckdrops"]["yum"]["remi-php56"]["description"] = "Les RPM de remi de PHP 5.6 pour Enterprise Linux 6 - $basearch"
default["moonstruckdrops"]["yum"]["remi-php56"]["baseurl"] = "http://rpms.famillecollet.com/enterprise/6/php56/$basearch/"
default["moonstruckdrops"]["yum"]["remi-php56"]["mirrorlist"] = "http://rpms.famillecollet.com/enterprise/6/php56/mirror"
default["moonstruckdrops"]["yum"]["remi-php56"]["gpgkey"] = "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi"
default["moonstruckdrops"]["yum"]["remi-php56"]["gpgcheck"] = true
default["moonstruckdrops"]["yum"]["remi-php56"]["enabled"] = false

default["moonstruckdrops"]["yum"]["remi-test"]["managed"] = false
default["moonstruckdrops"]["yum"]["remi-test"]["name"] = "remi-test"
default["moonstruckdrops"]["yum"]["remi-test"]["description"] = "Les RPM de remi en test pour Enterprise Linux 6 - $basearch"
default["moonstruckdrops"]["yum"]["remi-test"]["baseurl"] = "http://rpms.famillecollet.com/enterprise/6/test/$basearch/"
default["moonstruckdrops"]["yum"]["remi-test"]["mirrorlist"] = "http://rpms.famillecollet.com/enterprise/6/test/mirror"
default["moonstruckdrops"]["yum"]["remi-test"]["gpgkey"] = "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi"
default["moonstruckdrops"]["yum"]["remi-test"]["gpgcheck"] = true
default["moonstruckdrops"]["yum"]["remi-test"]["enabled"] = false

default["moonstruckdrops"]["yum"]["remi-debuginfo"]["managed"] = false
default["moonstruckdrops"]["yum"]["remi-debuginfo"]["name"] = "remi-debuginfo"
default["moonstruckdrops"]["yum"]["remi-debuginfo"]["description"] = "Les RPM de remi pour Enterprise Linux 6 - $basearch - debuginfo"
default["moonstruckdrops"]["yum"]["remi-debuginfo"]["baseurl"] = "http://rpms.famillecollet.com/enterprise/6/debug-remi/$basearch/"
default["moonstruckdrops"]["yum"]["remi-debuginfo"]["mirrorlist"] = ""
default["moonstruckdrops"]["yum"]["remi-debuginfo"]["gpgkey"] = "file:///etc/pki/rpm-gpg/RPM-GPG-KEY-remi"
default["moonstruckdrops"]["yum"]["remi-debuginfo"]["gpgcheck"] = true
default["moonstruckdrops"]["yum"]["remi-debuginfo"]["enabled"] = false

default["moonstruckdrops"]["yum"]["jenkins"]["name"] = "jenkins"
default["moonstruckdrops"]["yum"]["jenkins"]["description"] = "Jenkins repo"
default["moonstruckdrops"]["yum"]["jenkins"]["baseurl"] = "http://pkg.jenkins-ci.org/redhat"
default["moonstruckdrops"]["yum"]["jenkins"]["gpgkey"] = "http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key"
default["moonstruckdrops"]["yum"]["jenkins"]["gpgcheck"] = true
default["moonstruckdrops"]["yum"]["jenkins"]["enabled"] = false


# package
default["moonstruckdrops"]["yum"]["base"]["packages"] = ["emacs", "wget", "make", "gcc", "rpm-build", "vnc-server", "git", "subversion", "samba"]
default["moonstruckdrops"]["yum"]["epel"]["install"] = false
default["moonstruckdrops"]["yum"]["epel"]["packages"] = ["bash-completion", "ngircd", "ntfs-3g"]
default["moonstruckdrops"]["yum"]["rpmforge"]["install"] = false
default["moonstruckdrops"]["yum"]["rpmforge"]["packages"] = ["tmux"]
default["moonstruckdrops"]["yum"]["remi"]["install"] = false
default["moonstruckdrops"]["yum"]["remi"]["packages"] = ["firefox"]

# jenkins
default["moonstruckdrops"]["yum"]["jenkins"]["install"] = false
default["moonstruckdrops"]["yum"]["jenkins"]["packages"] = ["jenkins"]

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
