source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'pg'
gem 'puma'
gem 'rack-cors'
gem 'rails'
gem 'sass-rails'
gem 'tzinfo-data'


group :development, :test do
  gem 'awesome_print'
  gem 'factory_bot_rails'
  gem 'ffaker'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'shoulda-matchers', github: 'thoughtbot/shoulda-matchers'
end

group :development do
  gem 'bullet'
  gem 'bundle-audit'
  gem 'letter_opener'
  gem 'letter_opener_web'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'simplecov', require: false
end
