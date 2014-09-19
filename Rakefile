require 'rake'
require 'rake/testtask'

Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_peer_review*.rb'
  test.verbose = true
end

desc "Open console with Peer Review loaded"
task :console do
  exec "pry -r ./lib/peer_review.rb"
end
