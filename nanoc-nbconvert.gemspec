# encoding: utf-8

$LOAD_PATH.unshift(File.expand_path('../lib/', __FILE__))
require 'nanoc/nbconvert/version'

Gem::Specification.new do |s|
  s.name        = 'nanoc-nbconvert'
  s.version     = Nanoc::NBConvert::VERSION
  s.homepage    = 'http://www.kunxi.org/hacks/nanoc-nbconvert'
  s.summary     = 'IPython NBConvert support for nanoc'
  s.description = 'Provides a :nbconvert filter for nanoc'

  s.author  = 'Kun Xi'
  s.email   = 'kunxi@kunxi.org'
  s.license = 'MIT'

  s.required_ruby_version = '>= 1.9.3'

  s.files              = Dir['[A-Z]*'] +
                         Dir['{lib,test}/**/*'] +
                         [ 'nanoc-nbconvert.gemspec' ]
  s.require_paths      = [ 'lib' ]

  s.rdoc_options     = [ '--main', 'README.md' ]
  s.extra_rdoc_files = [ 'LICENSE', 'README.md', 'NEWS.md' ]

  s.add_runtime_dependency('nanoc')
  s.add_development_dependency('bundler')
end
