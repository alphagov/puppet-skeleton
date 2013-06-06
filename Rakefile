require 'rspec/core/rake_task'

# Break tasks out to individual rake files to prevent clutter.
FileList['lib/tasks/*.rake'].each do |rake_file|
  import rake_file
end

task :default => [:lint]
