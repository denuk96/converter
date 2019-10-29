lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "converter/version"

Gem::Specification.new do |spec|
  spec.name          = "converter"
  spec.version       = Converter::VERSION
  spec.authors       = ["denuk96"]
  spec.email         = ["e_den9611@live.com"]

  spec.summary       = %q{generation from ruby string to html code}
  spec.homepage      = "https://github.com/denuk96"

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
