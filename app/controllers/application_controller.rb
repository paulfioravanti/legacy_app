class ApplicationController < ActionController::Base
  protect_from_forgery

  def save_image(image, image_type)
    if image.save
      flash[:success] = "#{image_type} created"
      redirect_to images_path
    else
      flash[:error] = "Unable to save #{image_type}: #{image.errors.full_messages.to_sentence}"
      render :new
    end
  end
end
