require 'yard'

task :default => [:test]

desc 'Run Minitest'
task :test do
  ruby "test/models/test*.rb"
  ruby "test/routes/test*.rb"
end

YARD::Rake::YardocTask.new do |t|
  t.files   = ['app.rb', '**/helpers/*.rb', '**/routes/*.rb', '**/models/*.rb']
  t.options = ['--protected', '--private']
end
