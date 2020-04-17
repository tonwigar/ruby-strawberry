require_relative 'lib/strawberry_rafcio28s/version'

Gem::Specification.new do |spec|
  spec.name          = "strawberry_rafcio28s"
  spec.version       = StrawberryRafcio28s::VERSION
  spec.authors       = ["Rafal Szostek"]
  spec.email         = ["rafcio28s@gmail.com"]

  spec.summary       = "testing gem"
  spec.homepage      = "Put your gem's website or public repo URL here."
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
