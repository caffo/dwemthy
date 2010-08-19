# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dwemthy}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["rodrigo franco (caffo)"]
  s.date = %q{2010-08-19}
  s.default_executable = %q{dwemthy}
  s.description = %q{DWEMTHY'S ARRAY is not a mind puzzle. It is a short 60 line role-playing game that is played with Ruby metaprogramming. The game comes from chapter six of Why's (Poignant) Guide to Ruby.}
  s.email = %q{caffeine@gmail.com}
  s.executables = ["dwemthy"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "bin/dwemthy",
     "lib/creature.rb",
     "lib/dwemthy.rb",
     "lib/foes.rb",
     "lib/rabbit.rb",
     "test/helper.rb",
     "test/test_dwemthy.rb"
  ]
  s.homepage = %q{http://github.com/caffo/dwemthy}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{$$$ DWEMTHY_S ARRAY ^!^ A RUBY MINI_DUNGEON ^!^ ONLY 60 LINES OF CODE ^!^ DWEMTY IS WATCHING ^!^ A STALE BREATH IS ON YOUR NAPE, IS IT NOT ?? ^!^ DWEMTHY COMETH $$$}
  s.test_files = [
    "test/helper.rb",
     "test/test_dwemthy.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
