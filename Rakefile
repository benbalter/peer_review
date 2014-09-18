require 'rake'
require 'rake/testtask'

Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_labrador*.rb'
  test.verbose = true
end

desc "Open console with Labrador loaded"
task :console do
  exec "pry -r ./lib/labrador.rb"
end
