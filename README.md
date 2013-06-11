# puppet-skeleton

Skeleton project for infrastructure teams.

## Requirements

- [Ruby](http://www.ruby-lang.org/) and [Bundler](http://gembundler.com/) -- ideally with [rbenv](https://github.com/sstephenson/rbenv)
- [Vagrant](http://www.vagrantup.com/) -- ideally version >= 1.1

## Batteries included

### Module management

[librarian-puppet](https://github.com/rodjek/librarian-puppet) is used to
pull in external modules. Externalising modules makes them more re-usable.

As sample `Puppetfile` and `Puppetfile.lock` is included which contains
[puppetlabs-stdlib](https://github.com/puppetlabs/puppetlabs-stdlib).

### Tests

A modularised `Rakefile` will call the following test suites, in order:

- [puppet-syntax](https://github.com/alphagov/puppet-syntax) for syntax
  checking Puppet manifests and templates.
- [puppet-lint](https://github.com/rodjek/puppet-lint) to check manifests
  against PuppetLabs style guide.
- [rspec-puppet](https://github.com/rodjek/rspec-puppet) to run behaviour
  tests against Puppet manifests, types and providers.

### Vagrant

A simple `Vagrantfile` demonstrating the use of a mutli-VM setup with a
Puppet provisioner.
