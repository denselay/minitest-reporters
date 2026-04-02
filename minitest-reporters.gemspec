# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'minitest/reporters/version'

Gem::Specification.new do |s|
  s.name        = 'minitest-reporters-next'
  s.version     = Minitest::Reporters::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Alexander Kern', 'Mike Voets']
  s.email       = ['alex@kernul.com', 'mike@denselay.com']
  s.homepage    = 'https://github.com/denselay/minitest-reporters'
  s.summary     = %q{Create customizable Minitest output formats. Community-maintained fork of minitest-reporters.}
  s.description = %q{Death to haphazard monkey-patching! Extend Minitest through simple hooks. Community-maintained fork with modern compatibility (minitest 5/6, Rails 8.1+).}
  s.license     = 'MIT'

  s.required_ruby_version = '>= 2.3.0'

  s.add_dependency 'minitest', '>= 5.0', '< 7'
  s.add_dependency 'ansi'
  s.add_dependency 'ruby-progressbar'
  s.add_dependency 'builder'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
end
