# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails_extensions/version"

Gem::Specification.new do |s|
  s.name        = "rails_extensions"
  s.version     = RailsExtensions::VERSION
  s.authors     = ["Sean Behan"]
  s.email       = ["bseanvt@gmail.com"]
  s.homepage    = "http://github.com/agilionapps.com/rails_extensions"
  s.summary     = %q{Provides some useful methods.}
  s.description = %q{Project will extend various classes found in Ruby on Rails framework.}

  s.rubyforge_project = "rails_extensions"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
