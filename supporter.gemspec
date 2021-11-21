$:.push File.expand_path("../lib", __FILE__)

require 'supporter/version'

Gem::Specification.new do |s|
  s.name        = 'supporter'
  s.version     = Supporter::VERSION
  s.summary     = "Support gem"
  s.description = "A simple gem to support any model"
  s.author      = "Alex Koe(shushi)"
  s.email       = 'blackshushi4571@gmail.com'
  s.files       = Dir["{app,lib}/**/*"]
  s.homepage    = ''
  s.license     = 'MIT'
  s.executables = ['version']
  s.post_install_message = "Thanks for installing!"

  s.add_dependency "rails", '>= 5.0.0'
end
