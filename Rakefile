require 'rake'
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end
begin
  require 'rdoc/task'
rescue LoadError
  require 'rdoc/rdoc'
  require 'rake/rdoctask'
  RDoc::Task = Rake::RDocTask
end
require File.join('bundler', 'gem_tasks')

require 'rake/testtask'

desc 'Default: run unit tests.'
task default: :test

desc 'Test the library.'
Rake::TestTask.new do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/test_*.rb'
  t.verbose = false
end

desc 'Generate YARD documentation.'
task :gendoc do
  system 'yardoc'
  system 'yard stats --list-undoc'
end
