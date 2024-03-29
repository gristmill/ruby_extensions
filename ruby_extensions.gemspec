# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ruby_extensions/version"

Gem::Specification.new do |s|
  s.name        = "ruby_extensions"
  s.version     = RubyExtensions::VERSION
  s.authors     = ["Sean Behan"]
  s.email       = ["inbox@seanbehan.com"]
  s.homepage    = "http://github.com/gristmill/ruby_extensions"
  s.summary     = %q{Provides some useful methods.}
  s.description = %q{Project will extend various classes found in Ruby on ruby framework.}

  s.rubyforge_project = "ruby_extensions"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

end
