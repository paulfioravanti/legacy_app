source :rubygems

gem 'rails', '2.3.17'
gem "mysql" #, '~> 2.7.0'
gem "rake" #, '0.9.2'

gem 'will_paginate' #, '~> 2.3.0'

gem 'mini_magick' #, '~> 1.3.3'
gem 'daemons' #, '1.0.10'
gem 'delayed_job' #, '= 2.0.3'
gem 'execjs' #, '<= 1.2.6'
gem 'jammit'
gem 'barista', :git => 'https://github.com/Sutto/barista.git', :ref => "eeba1e32d1"
group :linux do
  # Mac's ship with the jsc command, so don't need this
  # gem 'therubyracer'
end

group :development, :test, :cucumber do
  gem 'ruby-debug'
end

group :test, :cucumber do
  # gem 'rspec-rails', '~> 1.3.3', :require => false
  gem 'rspec-rails', :require => false

  # Version 1.0.3 of machinist from RubyGems.org doesn't work
  #
  # So this is one downloaded from 'http://gems.github.com'
  # gem "machinist", '1.0.3', :require => false, :path => 'vendor/github_gems/notahat-machinist-1.0.3'
  # gem "faker",             "0.3.1", :require => false
  gem "machinist", :require => false
  gem "faker", :require => false
end

group :cucumber do
  # gem 'cucumber-rails', '~> 0.3.2', :require => false
  # gem 'webrat', '0.5.3', :require => false
  gem 'launchy', :require => false
  # gem 'database_cleaner',  '~> 0.2.3', :require  => false
  gem 'cucumber-rails', :require => false
  gem 'webrat', :require => false
  gem 'database_cleaner', :require  => false
end

