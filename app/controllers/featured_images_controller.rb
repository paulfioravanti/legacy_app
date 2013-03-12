class FeaturedImagesController < ApplicationController

  before_filter :find_image

  def new
    @featured_image = @image.featured_images.build(feature_at: Time.now)
  end

  def create
    @featured_image = @image.featured_images.build(params[:featured_image])
    save_image(@featured_image, "Featured image")
  end

protected

  def find_image
    @image = Image.find(params[:image_id])
  end

end