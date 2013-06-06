require 'puppet-lint/tasks/puppet-lint'

# Prevent third-party code from Bundler from being linted.
PuppetLint.configuration.ignore_paths = ["vendor/**/*.pp"]
