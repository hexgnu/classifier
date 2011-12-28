lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'classifier/version'

Gem::Specification.new do |s|
  s.name          = "classifier"
  s.version       = Classifier::Version
  s.platform      = Gem::Platform::RUBY
  s.authors       = ["Matt Kirk"]
  s.email         = ["matt@socialvolt.com"]
  s.summary       = "Bayesian Classification gem"
  s.description   = "Be able to classify things by given words"
  s.files         = Dir.glob("{lib}/**/*") + %w[README LICENSE]
  s.require_path  = "lib"
  s.has_rdoc      = true
  s.add_dependency 'fast-stemmer', '>= 1.0.0'
  s.add_development_dependency 'code_statistics'
end