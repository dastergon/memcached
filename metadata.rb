name              'memcached'
maintainer        'Chef Software, Inc.'
maintainer_email  'cookbooks@chef.io'
license           'Apache 2.0'
description       'Installs memcached and provides a define to set up an instance of memcache via runit'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           '1.8.0'

depends           'runit', '~> 1.0'
depends           'yum-epel'

supports 'amazon'
supports 'centos'
supports 'debian'
supports 'fedora'
supports 'oracle'
supports 'redhat'
supports 'scientific'
supports 'smartos'
supports 'suse'
supports 'ubuntu'

recipe 'memcached', 'Installs and configures memcached'

source_url 'https://github.com/chef-cookbooks/memcached' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/memcached/issues' if respond_to?(:issues_url)

attribute 'memcached/memory',
          display_name: 'Memcached Memory',
          description: 'Memory allocated for memcached instance',
          default: '64'

attribute 'memcached/port',
          display_name: 'Memcached Port',
          description: 'Port to use for memcached instance',
          default: '11211'

attribute 'memcached/user',
          display_name: 'Memcached User',
          description: 'User to run memcached instance as',
          default: 'nobody'

attribute 'memcached/listen',
          display_name: 'Memcached IP Address',
          description: 'IP address to use for memcached instance',
          default: '0.0.0.0'

attribute 'memcached/logfilename',
          display_name: 'Memcached logfilename',
          description: 'The filename used to log memcached',
          default: 'memcached.log'
