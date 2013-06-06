require 'rspec/core/rake_task'

# Ignore vendored code. Called by other tasks.
def exclude_paths
  ["vendor/**/*"]
end

# Break tasks out to individual rake files to prevent clutter.
FileList['lib/tasks/*.rake'].each do |rake_file|
  import rake_file
end

task :default => [
  :syntax,
  :lint,
]
