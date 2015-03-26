source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
#image attachments
gem "paperclip", "~> 4.2"
#javascript
gem 'therubyracer', platforms: :ruby
#password encryption
gem 'bcrypt', '~> 3.1.7'
gem 'httparty'
gem 'bootstrap-sass'
#rb-readline
gem 'rb-readline'
#bootstrap
gem 'autoprefixer-rails'
gem 'sprockets'

group :production do
   gem 'pg'
   gem 'rails_12factor'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.1'
  gem 'rspec-its'
  gem 'sqlite3'
end

group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'launchy'
  gem 'simplecov', require: false
  gem 'webmock'
end
  # Use ActiveModel has_secure_password

group :development do
  gem 'rails_layout'
end

ruby '2.2.0'