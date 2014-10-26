source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'

group :production do
  gem 'mysql2', platforms: :ruby
  gem 'lograge'
  gem 'unicorn-worker-killer'
end

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "meta_request"
  gem "quiet_assets"
  gem "spring"
  gem 'thin'
  gem "capistrano", "~> 2.15"
  gem "bullet"
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
  gem "pg"
  gem 'sqlite3'
end

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'compass-rails'
gem 'jquery-rails'
gem "haml"
gem "haml-rails"
gem 'asset_sync'

gem 'turbolinks'
gem "friendly_id", "~> 5.0.0"
gem "unicorn", platforms: :ruby
gem "sitemap_generator"
gem "devise"
gem 'fast_blank'

gem 'bcrypt-ruby', '~> 3.0.0'
