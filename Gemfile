source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'jquery-slick-rails'
gem 'uglifier', '>= 1.3.0'

gem 'pg'
gem 'puma'
gem 'rack-cors'
gem 'rails'
gem 'tzinfo-data'

gem 'bootstrap-sass'
gem 'font-awesome-rails'
gem 'sass-rails'

gem 'cells-erb'
gem 'cells-rails'
gem 'dry-types'
gem 'dry-validation', '0.11.1'
gem 'trailblazer'
gem 'trailblazer-cells'
gem 'trailblazer-rails'

gem 'ancestry'
gem 'carrierwave'

gem 'kaminari'
gem 'ransack', github: 'activerecord-hackery/ransack'

gem 'acts-as-taggable-on'

# Admin area
gem 'activeadmin'
gem 'activeadmin_addons'
gem 'bcrypt'

gem 'active_admin-sortable_tree'

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
  gem 'rails-controller-testing'
  gem 'simplecov', require: false
end
