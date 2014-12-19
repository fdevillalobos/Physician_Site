source 'https://rubygems.org'
ruby '2.1.3'
gem 'rails', '4.1.6'

gem 'hirb' # nice views for rails console

gem 'sass-rails', '~> 4.0.3'
gem 'coffee-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'therubyracer'
gem 'jquery-rails'

gem 'turbolinks'
gem 'binding_of_caller'
#gem 'jbuilder', '~> 2.0'
#gem 'sdoc', '~> 0.4.0',          group: :doc
#gem 'spring',                    group: :development

gem 'twitter-bootstrap-rails' # Bootstrap feel in the site
gem 'less-rails'
gem 'devise'          # User Management
gem 'annotate'        # Puts the actual schema annotation in the model file

gem 'figaro'

# gem 'rspec-rails'
gem 'rails_layout'

gem 'omniauth-facebook'

gem 'haml'      # Gem that uses HAML instead of erb

# Google Maps
gem 'geocoder'
gem 'gmaps4rails'

group :development do
  gem 'better_errors'
  #gem 'binding_of_caller', :platforms=>[:mri_21]
  #gem 'quiet_assets'
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'rails_refactor'
  #gem 'faker'
  gem 'rspec-rails'
  #gem 'sqlite3'
  gem 'cucumber-rails', :require => false     # By default don't include till I say require 'cucumber-rails'.
  gem 'cucumber-rails-training-wheels'
  gem 'database_cleaner'
  gem 'capybara'                              # Fill in forms automatically.
  gem 'launchy'                               # Use launchy to start processes and applications.
  gem 'sqlite3'
  gem 'simplecov', :require => false
end
group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'newrelic_rpm'
end
#group :test do
#  gem 'selenium-webdriver'
#end