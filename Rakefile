require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "dwemthy"
    gem.summary = "$$$ DWEMTHY_S ARRAY ^!^ A RUBY MINI_DUNGEON ^!^ ONLY 60 LINES OF CODE ^!^ DWEMTY IS WATCHING ^!^ A STALE BREATH IS ON YOUR NAPE, IS IT NOT ?? ^!^ DWEMTHY COMETH $$$"
    gem.description = "DWEMTHY'S ARRAY is not a mind puzzle. It is a short 60 line role-playing game that is played with Ruby metaprogramming. The game comes from chapter six of Why's (Poignant) Guide to Ruby."
    gem.email = "caffeine@gmail.com"
    gem.homepage = "http://github.com/caffo/dwemthy"
    gem.authors = ["rodrigo franco (caffo)"]
    # gem.add_development_dependency "thoughtbot-shoulda", ">= 0"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

begin
  require 'rcov/rcovtask'
  Rcov::RcovTask.new do |test|
    test.libs << 'test'
    test.pattern = 'test/**/test_*.rb'
    test.verbose = true
  end
rescue LoadError
  task :rcov do
    abort "RCov is not available. In order to run rcov, you must: sudo gem install spicycode-rcov"
  end
end

task :test => :check_dependencies

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "dwemthy #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
