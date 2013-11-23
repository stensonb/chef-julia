# -*- encoding: utf-8 -*-
require File.expand_path('../lib/chef-julia/version.rb', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'chef-julia'
  s.version     = ChefJulia::VERSION
  s.authors     = ['Bryan Stenson']
  s.email       = ['bryan.stenson@gmail.com']
  s.homepage    = 'http://github.com/stensonb/chef-julia/'
  s.summary     = %q{A gem to create Chef cookbooks}
  s.description = %q{}
  s.license	= 'MIT'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'bundler'

  s.files        = `git ls-files`.split("\n")
  s.require_path = 'lib'
end
