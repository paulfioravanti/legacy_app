require 'machinist/active_record'
require 'faker'
require 'action_controller'
include ActionDispatch::TestProcess

# Sham.define do
#   caption { Faker::Lorem.words(3).join(' ') }
# end

Image.blueprint do
  # size { 128 }
  caption { Faker::Lorem.words(3).join(' ') }
  # uploaded_data { ActionController::TestUploadedFile.new(Rails.root.join(*%w[features fixtures trike-logo.jpg]).to_s, 'image/jpeg') }
  uploaded_data { fixture_file_upload("#{Rails.root}/features/fixtures/trike-logo.jpg", 'image/jpeg') }
end

FeaturedImage.blueprint do
  image
end
