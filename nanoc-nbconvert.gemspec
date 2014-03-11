# encoding: utf-8

Gem::Specification.new do |s|
  s.name        = 'nanoc-nbconvert'
  s.version     =  '0.1.1'
  s.homepage    = 'http://github.com/kunxi/nanoc-nbconvert'
  s.summary     = %q{A nanoc filter to convert IPython notebook}
  s.description = %q{A nanoc filter to convert IPython notebook}

  s.author  = 'Kun Xi'
  s.email   = 'kunxi@kunxi.org'
  s.license = 'MIT'

  s.files              = Dir['[A-Z]*'] +
                         Dir['{lib,test}/**/*'] +
                         [ 'nanoc-nbconvert.gemspec' ]
  s.test_files         = Dir['{test,spec,features}/**/*']
  s.require_paths      = [ 'lib' ]

  s.rdoc_options     = [ '--main', 'README.md' ]
  s.extra_rdoc_files = [ 'LICENSE', 'README.md', 'NEWS.md' ]

  s.add_runtime_dependency('nanoc')
  s.add_development_dependency('bundler')
end
