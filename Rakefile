require 'bundler/setup'
require 'padrino-core/cli/rake'
require 'rspec/core/rake_task'
require 'cucumber/rake/task'
PADRINO_ENV  = ENV['PADRINO_ENV'] ||= ENV['RACK_ENV'] ||= 'test'  unless defined?(PADRINO_ENV)

task :version do
  require './lib/version.rb'
  puts Version.current
  exit 0
end

PadrinoTasks.use(:database)
PadrinoTasks.use(:datamapper)
PadrinoTasks.init

if ['development', 'test', 'travis'].include?(PADRINO_ENV)

  #run unitest and integration tests!
	task :all do
    Rake::Task['spec'].invoke
    Rake::Task['cucumber'].invoke
  end

  RSpec::Core::RakeTask.new(:spec) do |t|
    t.pattern = "./spec/**/*_spec.rb"
    t.rspec_opts = %w(-fs --color)
  end

  Cucumber::Rake::Task.new(:cucumber) do |task|
    task.cucumber_opts = ["features"]
  end

  #Run test and integration test with Junit formater
  task :build_server do
    Rake::Task['spec_report'].invoke
    Rake::Task['cucumber_report'].invoke
  end

  RSpec::Core::RakeTask.new(:spec_report) do |t|
    t.pattern = "./spec/**/*_spec.rb"
    t.rspec_opts = %w(--format RspecJunitFormatter --out reports/spec/spec.xml)
  end

  Cucumber::Rake::Task.new(:cucumber_report) do |task|
    Rake::Task['db:migrate'].invoke
    task.cucumber_opts = ['features', '--format html -o reports/cucumber.html']
  end

  task :default => [:all]
end
