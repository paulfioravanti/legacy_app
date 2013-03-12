require 'machinist/active_record'
require 'faker'
require 'action_controller'
include ActionDispatch::TestProcess

Image.blueprint do
  size { 512 }
  caption { Faker::Lorem.words(3).join(' ') }
  uploaded_data { fixture_file_upload("#{Rails.root}/features/fixtures/trike-logo.jpg", 'image/jpeg') }
end

FeaturedImage.blueprint do
  image
end
