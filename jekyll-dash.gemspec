# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "alain"
  spec.version       = "0.1"
  spec.authors       = ["Alain Y. Meza H."]
  spec.email         = ["alainhuntt@gmail.com"]

  spec.summary       = "La pequeña casa de Alain en Internet"
  spec.homepage      = "https://alainm.me/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_plugins|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.5"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.9"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"
  spec.add_runtime_dependency "jekyll-paginate"

  spec.add_development_dependency "bundler", "~> 1.17.3" #2.1.4 #1.17.3
  spec.add_development_dependency "rake", "~> 12.0"
end
