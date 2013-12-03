source 'https://rubygems.org'

gem 'rails', '3.2.11'
gem 'mysql2'
gem 'will_paginate', '~> 3.0'
gem "capistrano", "~> 2.13.4"
gem 'rvm-capistrano'
gem "therubyracer", :require => 'v8'
gem 'jquery-rails'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
group :test do
  gem 'turn', :require => false
  gem 'capybara'
end

group :production do
  gem 'unicorn'
end

group :development do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'jazz_hands'
  gem 'thin'
  gem 'xray-rails'
  gem 'better_errors'
  gem 'sextant'
end