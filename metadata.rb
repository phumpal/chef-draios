name "draios"
description "Installs the Draios client"
maintainer "Patrick Humpal"
maintainer_email "patrick@netvilla.net"
license "Apache 2.0"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version "0.1.0"

recipe "draios", "Deploys Draios"

%w{ debian ubuntu centos fedora rhel }.each do |os|
  supports os
end

depends "apt"
depends "yum"
