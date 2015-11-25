source 'https://rubygems.org'
ruby "1.9.3"

# Distribute your app as a gem
# gemspec

# Server requirements
gem 'thin' # or mongrel
# gem 'trinidad', :platform => 'jruby'

# Optional JSON codec (faster performance)
# gem 'oj'

gem 'rake'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'erubis', '~> 2.7.0'
gem 'googl'
gem 'slim'
gem 'haml'
gem 'pg', :group => 'production'
gem 'dm-postgres-adapter', :group => 'production'
gem 'dm-validations'
gem 'dm-timestamps'
gem 'dm-migrations'
gem 'dm-constraints'
gem 'dm-aggregates'
gem 'dm-types'
gem 'dm-core'
gem 'dm-ar-finders'
gem 'tilt', '1.3.7'
gem 'padrino', '0.11.1'
gem 'cowsay'

group :test, :development do
  gem 'dm-sqlite-adapter'
  gem 'rspec'
  gem 'rspec_junit_formatter'
  gem 'capybara'
  gem "poltergeist"
  gem 'cucumber'
  gem 'simplecov'
  gem 'rack-test', :require => 'rack/test'
  gem 'rubocop',  :github => 'bbatsov/rubocop'
end

group :development do
  gem 'debugger'
end
