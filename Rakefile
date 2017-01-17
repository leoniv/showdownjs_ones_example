#require "rake/testtask"

#Rake::TestTask.new(:test) do |t|
#  t.libs << "test"
#  t.test_files = FileList['test/test_helper.rb']
#end

$LOAD_PATH.unshift File.expand_path('../test', __FILE__)
require 'test_helper'
task :run do |t|
  ShowdownjsOnesExampleTest.new.run
end

task :default => :run
