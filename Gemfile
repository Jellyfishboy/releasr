source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'

# Use sqlite3 as the database for Active Record
gem 'sqlite3'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.1.2'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

gem "friendly_id", "~> 5.0.0"
gem "asset_sync"
gem "unicorn", platforms: :ruby
gem "rollbar", "~> 0.12.17"
gem "whenever", require: false
gem "pg"
group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "meta_request"
  gem "haml-rails"
  gem "quiet_assets"
  gem "rack-mini-profiler"
  gem "capistrano", "~> 2.15"
  gem "bullet"
  gem "haml"
  gem "capistrano-unicorn", require: false, platforms: :ruby
end

group :test do
  gem "rspec-rails"
  gem "factory_girl_rails"
  gem "capybara"
  gem "capybara-screenshot"
  gem "poltergeist"
  gem "database_cleaner"
  gem "shoulda-matchers"
  gem "faker"
end

group :development, :test do
  gem "pry"
  gem "sqlite3"
end
