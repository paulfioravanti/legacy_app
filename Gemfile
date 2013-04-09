source 'http://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.13'

gem 'jquery-rails', '2.2.1'
gem 'mysql2', '0.3.11'

gem 'will_paginate', '3.0.4'
gem 'mini_magick', '3.5.0'
gem 'daemons', '1.1.9'
gem 'delayed_job', '3.0.5'
gem 'delayed_job_active_record', '0.4.3'
gem 'execjs', '1.4.0'
gem 'jammit', '0.6.6'
gem 'barista', git: 'https://github.com/Sutto/barista.git', ref: "eeba1e32d1"
gem 'pothoven-attachment_fu', '3.2.6'

gem 'haml-rails', '0.4.0'
# App secret key configuration
gem 'figaro', '0.6.3'

group :linux do
  # Mac's ship with the jsc command, so don't need this
  # gem 'therubyracer'
end

group :development do
  gem 'ruby-debug19', '0.11.6'
  gem 'brakeman', '1.9.5'
  gem 'rails_best_practices', '1.13.4'
  gem 'annotate', '2.5.0'
end

group :test, :cucumber do
  gem 'test-unit', '2.5.4'
  gem 'capybara', '2.0.3'
  gem 'rspec-rails', '2.13.0', require: false
  gem "machinist", '2.0', require: false
  gem "faker", '1.1.2', require: false
  gem 'simplecov', '0.7.1', require: false
  gem 'coveralls', '0.6.5', require: false
  gem 'database_cleaner', '0.9.1'
  gem 'launchy', '2.2.0'
  gem 'cucumber-rails', '1.3.1', require: false
  gem 'webrat', '0.7.3', require: false
end

group :cucumber do

end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '3.2.6'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.3.0'
end