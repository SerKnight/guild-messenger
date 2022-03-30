source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.4.0'

gem 'rails', '~> 5.0.2'
gem 'pg', '~> 0.21' 
gem 'puma', '~> 4.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'font-awesome-sass', '~> 4.7.0'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'rails_layout'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'popper'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap', '~> 4.0.0.alpha3.1'
gem 'devise'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end

gem 'faker', '~> 1.8.7' # to build data on prod/

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'pry'
end

group :test do
  gem 'database_cleaner'
  gem 'launchy'
  gem 'capybara', '>= 2.7.0'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

group :production do
  gem 'redis', '~> 3.0'
end