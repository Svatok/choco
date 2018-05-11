source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'jquery-rails'
gem 'jquery-slick-rails'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'pg'
gem 'puma'
gem 'rack-cors'
gem 'rails'
gem 'tzinfo-data'

gem 'bootstrap-sass'
gem 'sass-rails'
gem 'font-awesome-rails'

gem 'trailblazer'
gem 'trailblazer-rails'
gem 'trailblazer-cells'
gem 'cells-erb'
gem 'cells-rails'
gem 'dry-validation'

gem 'ancestry'
gem 'carrierwave'

# Admin area
gem 'activeadmin'
gem 'activeadmin_addons'
gem 'active_admin-sortable_tree'
gem 'bcrypt'

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
  gem 'rails-controller-testing'
end
