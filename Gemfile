source 'https://rubygems.org'

gem 'rails', '~> 4.0.0'

gem 'pg'

gem 'unicorn'

gem 'sass-rails'
gem 'uglifier'
gem 'jquery-rails'
gem 'coffee-script'
gem 'bootstrap-sass'

gem 'sidekiq'
gem 'devise'
gem 'cancan'
gem 'sinatra', '>= 1.3.0', :require => nil
gem 'protected_attributes'
gem 'ransack'
gem 'kaminari'
gem 'best_in_place', github: 'bernat/best_in_place'

group :production do
  gem 'rails_12factor'
  gem 'rails_stdout_logging'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'pry-rails'
  gem 'figaro'
  gem 'webrick'
end

group :test do
  gem 'capybara'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
  gem 'show_me_the_cookies'
  gem 'database_cleaner'
  gem 'ffaker'
  gem 'vcr'
  gem 'rspec-sidekiq'
  gem 'webmock'
end