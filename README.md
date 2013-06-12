# puppet-skeleton

This is a skeleton project for Web Operations teams using Puppet. It ties
together a suite of sensible defaults, best current practices, and re-usable
code. The intentions of which are two-fold:

- New projects can get started and bootstrapped faster without needing to
  collate or re-writing this material themselves.

- The standardisation and modularisation of these materials makes it easier
  for ongoing improvements to be shared, in both directions, between
  different teams.

It is suggested that you fork or clone this repository when starting out.
Improvements can be submitted back with pull requests. Any significant
portions of code should be modularised to a more appropriate distribution
mechanism, such as Ruby gems or Vagrant plugins.

## Batteries included

Here are the headline details of what's inside.

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

## Requirements

- [Ruby](http://www.ruby-lang.org/) and [Bundler](http://gembundler.com/) -- ideally with [rbenv](https://github.com/sstephenson/rbenv)
- [Vagrant](http://www.vagrantup.com/) -- ideally version >= 1.1
