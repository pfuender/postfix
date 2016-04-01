name 'postfix'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs and configures postfix for client or outbound relayhost, or to do SASL auth'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '3.8.0'

recipe 'postfix', 'Installs and configures postfix'
recipe 'postfix::sasl_auth', 'Set up postfix to auth to a server with sasl'
recipe 'postfix::aliases', 'Manages /etc/aliases'
recipe 'postfix::transports', 'Manages /etc/postfix/transport'
recipe 'postfix::access', 'Manages /etc/postfix/access'
recipe 'postfix::virtual_aliases', 'Manages /etc/postfix/virtual'
recipe 'postfix::client', 'Searches for the relayhost based on an attribute'
recipe 'postfix::server', 'Sets the mail_type attribute to master'

%w(ubuntu debian redhat centos amazon oracle scientific smartos fedora).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/postfix' if respond_to?(:issues_url)
issues_url 'https://github.com/chef-cookbooks/postfix/issues' if respond_to?(:source_url)
