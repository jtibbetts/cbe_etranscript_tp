source 'https://rubygems.org'

ruby '2.1.4'

gem 'rails', '~> 4.1.6'

gem 'mysql2', '~> 0.3.13'
gem 'sqlite3'

gem 'lti2', git: 'git@github.com:vitalsource/lti2-reference.git', branch: 'LTI2.1-splitsecret'

gem 'activeadmin', github: 'gregbell/active_admin'
#Active admin dependencies
gem 'ransack'
gem 'inherited_resources'

gem 'haml-rails', '~> 0.4'
gem 'httparty', '~> 0.8.1'
gem 'jquery-rails', '~> 3.0.4'
gem 'json', '~> 1.8.0'
gem 'jsonpath', '0.5.1'
gem 'lrucache'
gem 'RedCloth', '~> 4.2.9'
gem 'sass-rails', '~> 4.0.0'
gem 'yaml_db', github: 'turgu1/yaml_db'
gem 'uuid', '~> 2.3.7'

group :development do
  gem 'coffee-rails', '~> 4.0.0'
  gem 'uglifier', '~> 2.4.0'
  gem 'execjs'
  gem 'therubyracer', '~> 0.12.0'
  gem 'quiet_assets'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'pry'
  gem 'pry-rails'
  # gem 'pry-plus'
  # the following components of pry-plus now have to be listed separately
  # so that pry-debugger, which uses debugger, which doesn't compile under
  # ruby 2.1.2, can be replaced with pry-byebug
  gem 'bond'
  gem 'jist'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-docmore'
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
end
