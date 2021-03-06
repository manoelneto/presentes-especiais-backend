source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'figaro'

gem 'yard'

group :production do

  # Use the Unicorn app server
  gem 'unicorn'

  gem 'exception_notification'

  gem 'pg'

end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development do
  # deploy
  # gem 'capistrano', '~> 3.1.0'

  # # rails specific capistrano funcitons
  # gem 'capistrano-rails', '~> 1.1.0'

  # # integrate bundler with capistrano
  # gem 'capistrano-bundler'

  # # if you are using RBENV
  # gem 'capistrano-rbenv', "~> 2.0"
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Factory girl
  gem "factory_girl_rails", "~> 4.0"

  # test unit
  gem 'rspec-rails', '~> 3.0'

  # deploy
  gem 'capistrano', '~> 3.1.0'

  # rails specific capistrano funcitons
  gem 'capistrano-rails', '~> 1.1.0'

  # integrate bundler with capistrano
  gem 'capistrano-bundler'

  # if you are using RBENV
  gem 'capistrano-rbenv', "~> 2.0"

  gem 'annotate'

  gem 'guard-rspec'
  gem 'guard-annotate'
  gem 'guard-rails'
  gem 'database_cleaner',     '1.4.1'
  gem 'ffaker'
  gem 'better_errors',        '2.1.1'

end

gem 'spree', '3.0.3'
gem 'spree_gateway', github: 'spree/spree_gateway', branch: '3-0-stable'
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: '3-0-stable'

gem 'rack-cors', :require => 'rack/cors'

gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-facebook-access-token'
gem 'super_awesome_print'
gem 'spree_correios', git: 'git@gitlab-webfac.tk:presentes-especiais/spree_correios.git'
gem 'simple_form'
gem 'carrierwave'
gem 'mini_magick'
gem 'simple_form_fancy_uploads'
