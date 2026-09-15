require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = 'test/*_test.rb'
    # run every file matching test/*_test.rb
  t.warning = false
  # suppress Ruby warnings
end

task :default => [:test]
# 'rake' with no arguments will run tests