Gem::Specification.new do |gem|
  gem.authors = ['opensource_firespring']
  gem.email = ['opensource@firespring.com']
  gem.summary       = 'DataMapper plugin providing support for aggregates on collections'
  gem.description   = 'DataMapper plugin providing support for aggregates, functions on collections and datasets.'
  gem.license = 'Nonstandard'
  gem.homepage      = 'https://datamapper.org'

  gem.files         = `git ls-files`.split("\n")

  gem.name          = 'sbf-data_mapper'
  gem.require_paths = ['lib']
  gem.version       = '1.2.0'
  gem.required_ruby_version = '>= 2.7.8'

  gem.add_runtime_dependency('sbf-dm-core', '~> 1.3.0.beta')
  gem.add_runtime_dependency('sbf-dm-aggregates', '~> 1.3.0.beta')
  gem.add_runtime_dependency('sbf-dm-constraints', '~> 1.3.0.beta')
  gem.add_runtime_dependency('sbf-dm-migrations', '~> 1.3.0.beta')
  gem.add_runtime_dependency('sbf-dm-transactions', '~> 1.3.0.beta')
  gem.add_runtime_dependency('sbf-dm-serializer', '~> 1.3.0.beta')
  gem.add_runtime_dependency('sbf-dm-timestamps', '~> 1.3.0.beta')
  gem.add_runtime_dependency('sbf-dm-validations', '~> 1.3.0.beta')
  gem.add_runtime_dependency('sbf-dm-types', '~> 1.3.0.beta')
end