source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'

gem 'jquery-rails'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  # Use sqlite3 as the database for Active Record
   gem 'sqlite3'
   gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
 end

 # Use SCSS for stylesheets
 gem 'sass-rails', '~> 5.0'
 # Use Uglifier as compressor for JavaScript assets
 gem 'uglifier', '>= 1.3.0'
 # Use CoffeeScript for .coffee assets and views
 gem 'coffee-rails', '~> 4.2'
 gem 'jquery-rails'
 gem 'turbolinks', '~> 5'
 gem 'jquery-turbolinks'
 gem 'figaro'


 group :development, :test do
    gem 'byebug'
    gem 'spring'
    gem 'rspec-rails'
    gem 'shoulda'
    gem 'faker'
    gem 'factory_bot_rails'
    gem 'pry-rails'
  end

gem 'bootstrap-sass'
gem 'devise'
