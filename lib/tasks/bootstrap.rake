desc 'Set up gems and vendor modules'
task :bootstrap do
  Rake::Task[:bundle].invoke
  Rake::Task[:vendor].invoke
end

desc "Install gems from Gemfile"
task :bundle do
  $stderr.puts "---> Running bundler"
  system "bundle install"
end

desc 'Update vendor modules with librarian-puppet'
task :vendor do
  $stderr.puts "---> Running librarian-puppet"
  system "bundle exec librarian-puppet install"
end

