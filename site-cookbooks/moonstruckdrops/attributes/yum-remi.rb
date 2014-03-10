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
