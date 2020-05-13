ruby '2.6.5'

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
gem 'pg'
gem 'puma', '~> 4.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'autoprefixer-rails'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 5.0'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'

gem 'httparty'
gem 'redcarpet'

# Spina
gem 'spina', github: 'Bramjetten/Spina', branch: :attrjson
gem 'spina-upgrade', github: 'spinacms/spina-upgrade', branch: :attrjson

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'fontcustom'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'rails_12factor'
  gem 'fog-aws'
  gem 'dalli'
  gem 'connection_pool'
  gem 'skylight'
end