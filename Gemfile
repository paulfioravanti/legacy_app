source 'http://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.16'

gem 'jquery-rails', '3.0.1'
gem 'mysql2', '0.3.14'

gem 'will_paginate', '3.0.5'
gem 'mini_magick', '3.7.0'
gem 'daemons', '1.1.9'
gem 'delayed_job', '3.0.5'
gem 'delayed_job_active_record', '0.4.4'
gem 'execjs', '1.4.0'
gem 'jammit', '0.6.6'
gem 'barista', '1.3.0'
gem 'pothoven-attachment_fu', '3.2.10'

gem 'haml-rails', '0.4.0'
# App secret key configuration
gem 'figaro', '0.7.0'

group :linux do
  # Mac's ship with the jsc command, so don't need this
  # gem 'therubyracer'
end

group :development do
  gem 'ruby-debug19', '0.11.6'
  gem 'brakeman', '2.3.1'
  gem 'rails_best_practices', '1.14.4'
  gem 'annotate', '2.6.0'
end

group :test, :cucumber do
  gem 'test-unit', '2.5.5'
  gem 'capybara', '2.2.0'
  gem 'rspec-rails', '2.14.0', require: false
  gem "machinist", '2.0', require: false
  gem "faker", '1.2.0', require: false
  gem 'simplecov', '0.8.2', require: false
  gem 'coveralls', '0.7.0', require: false
  gem 'database_cleaner', '1.2.0'
  gem 'launchy', '2.3.0'
  gem 'cucumber-rails', '1.4.0', require: false
  gem 'webrat', '0.7.3', require: false
end

group :cucumber do

end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '3.2.6'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '2.1.1'
end