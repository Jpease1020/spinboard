source 'https://rubygems.org'

gem 'rails', '4.2.5'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'bcrypt', '~> 3.1.7'
gem 'responders'
gem 'active_model_serializers', github: 'rails-api/active_model_serializers'
gem "validate_url"

group :production do
  gem 'rails_12factor'
end
group :development, :test do
  gem "byebug"
  gem "rspec-rails"
  gem "capybara"
  gem "database_cleaner"
  gem "selenium-webdriver"
  gem "factory_girl_rails", "~> 4.0"
  gem "shoulda-matchers", "~> 3.1"
  gem "launchy"
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem "quiet_assets"
end
