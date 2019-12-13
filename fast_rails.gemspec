require_relative 'lib/fast_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "fast_rails"
  spec.version       = FastRails::VERSION
  spec.authors       = ["cobafan"]
  spec.email         = ["cobafan55@gmail.com"]

  spec.summary       = %q{How to write faster for the rails code by the rails code}
  spec.description   = %q{How to write faster for the rails code by the rails code}
  spec.homepage      = "https://github.com/cobafan/fast_rails"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end