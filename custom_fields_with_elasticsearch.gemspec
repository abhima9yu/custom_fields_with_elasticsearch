# frozen_string_literal: true

require_relative "lib/custom_fields_with_elasticsearch/version"

Gem::Specification.new do |spec|
  spec.name          = "custom_fields_with_elasticsearch"
  spec.version       = CustomFieldsWithElasticsearch::VERSION
  spec.authors       = ["abhima9yu"]
  spec.email         = ["abhima9yu@gmail.com"]

  spec.summary       = "Add custom fields to any model."
  spec.description   = 'Add custom fields to any model. We use elasticsearch for indexing these custom fields.
  For querying, searching and sorting we use elasticsearch'
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.6.0")


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "rake", "~> 13.0"

  # development dependencies
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "rubocop", "~> 1.13"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
