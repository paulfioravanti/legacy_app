Given /^there is an image$/ do
  @image = Image.make!
end

When /^I choose an image to upload$/ do
  file = Rails.root.join(*%w[features fixtures trike-logo.jpg])
  step %|I attach the file "#{file}" to "image[uploaded_data]"|
end

Then /^I should see the image thumbnail$/ do
  page.should have_selector(".container img")
end

Then /^I should see the featured image$/ do
  page.should have_selector("#featured_image img")
end

