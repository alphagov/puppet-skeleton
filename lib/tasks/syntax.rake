desc "Run all syntax checks"
task :syntax => [
  'syntax:puppet',
  'syntax:templates',
]
