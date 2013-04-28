source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'heroku'
gem 'bootstrap-sass'
gem 'jquery-rails'
gem 'will_paginate'
gem 'active_attr'
gem 'bcrypt-ruby', '~> 3.0.0' # To use ActiveModel has_secure_password
gem "paperclip", "~> 3.0"
gem 'metamagic'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier', '>= 1.0.3'
  gem 'twitter-bootstrap-rails'
  gem 'therubyracer'
  gem 'less-rails'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
end

group :test do
  gem "factory_girl_rails"
  gem "capybara"
  gem "guard-rspec"
end

group :development do
  gem "growl"
  gem "growl_notify"
  gem "rb-fsevent"
end

group :production do
  gem 'pg'
  gem 'thin'
end

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'