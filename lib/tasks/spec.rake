require 'rspec-puppet'

desc "Run any defined tests"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'spec/*.rb'
  t.ruby_opts = '-W0'
  t.rspec_opts = '--color -fd'
end
