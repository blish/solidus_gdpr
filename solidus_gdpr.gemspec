# frozen_string_literal: true

$:.push File.expand_path('lib', __dir__)
require 'solidus_gdpr/version'

Gem::Specification.new do |s|
  s.name = 'solidus_gdpr'
  s.version = SolidusGdpr::VERSION
  s.summary = 'A Solidus extension for implementing GDPR in your store.'
  s.description = s.summary
  s.license = 'BSD-3-Clause'

  s.author = 'Alessandro Desantis'
  s.email = 'alessandrodesantis@nebulab.it'
  s.homepage = 'https://nebulab.it'

  if s.respond_to?(:metadata)
    s.metadata["homepage_uri"] = s.homepage if s.homepage
    s.metadata["source_code_uri"] = "https://github.com/solidusio-contrib/solidus_gdpr"
    s.metadata["changelog_uri"] = 'https://github.com/solidusio-contrib/solidus_gdpr/blob/main/CHANGELOG.md'
  end

  s.required_ruby_version = '>= 2.4'

  s.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  s.test_files = Dir['spec/**/*']
  s.bindir = "exe"
  s.executables = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]


  s.add_dependency 'rubyzip', ['>= 1.2', '< 3.0']
  s.add_dependency 'solidus_core', ['>= 3.4.0', '< 4']
  s.add_dependency 'solidus_support', '~> 0.9'

  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'solidus_dev_support'
end
