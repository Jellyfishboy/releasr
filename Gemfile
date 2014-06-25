source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.2'
gem 'sqlite3'

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'compass-rails'
gem 'jquery-rails'

gem 'turbolinks'
gem "friendly_id", "~> 5.0.0"
gem "asset_sync"
gem 'fog'
gem 'unf'
gem "unicorn", platforms: :ruby
gem "rollbar", "~> 0.12.17"
gem "whenever", require: false
gem "sitemap_generator"
gem "devise"
gem 'fast_blank'

group :production do
  gem 'mysql2', platforms: :ruby
  gem 'lograge'
end

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "meta_request"
  gem "haml-rails"
  gem "quiet_assets"
  # gem "rack-mini-profiler"
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
end

gem 'bcrypt-ruby', '~> 3.0.0'
