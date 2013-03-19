if ENV['TRAVIS']
  require 'coveralls'
  Coveralls.wear! 'rails'
end
SimpleCov.start 'rails'