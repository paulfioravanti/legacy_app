class FeaturedImagesController < ApplicationController

  before_filter :find_image

  def new
    @featured_image = @image.featured_images.build(feature_at: Time.now)
  end

  def create
    @featured_image = @image.featured_images.build(params[:featured_image])
    if @featured_image.save
      flash[:success] = "Featured image created"
      redirect_to images_path
    else
      flash[:error] = "Unable to save featured image: #{@featured_image.errors.full_messages.to_sentence}"
      render :new
    end
  end

protected

  def find_image
    @image = Image.find(params[:image_id])
  end

end