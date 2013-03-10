require 'spec_helper'

describe FeaturedImage do

  describe "current" do

    it "returns the image that is has the newest featured at after the current time" do
      # future_image = Image.make
      # current_image = Image.make
      # past_image = Image.make
      future_image = Image.make!
      current_image = Image.make!
      past_image = Image.make!
      current_image.featured_images.create(:feature_at => 1.hour.ago)
      future_image.featured_images.create(:feature_at => 1.day.from_now)
      past_image.featured_images.create(:feature_at => 1.day.ago)

      FeaturedImage.current.should == current_image
    end

    it "returns nil if there no applicable featured images" do
      FeaturedImage.current.should be_nil
    end

  end

end
