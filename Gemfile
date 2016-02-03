source 'https://rubygems.org'

# Versions can be overridden with environment variables for matrix testing.
# Travis will remove Gemfile.lock before installing deps. As such, it is
# advisable to pin major versions in this Gemfile.

# Puppet core.
gem 'puppet', ENV['PUPPET_VERSION'] || '~> 3.8.2'
gem 'facter', ENV['FACTER_VERSION'] || '~> 1.6.0'

# Dependency management.
gem 'librarian-puppet'

# Testing utilities.
gem 'rake'
gem 'puppet-syntax', '~> 2.1.0'
gem 'puppet-lint', '~> 1.0.1'
gem 'rspec-puppet', '~> 2.3.2'
gem 'puppetlabs_spec_helper', '~> 1.0.1'
