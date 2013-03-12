class ImagesController < ApplicationController

  before_filter :find_image, except: [:index, :new, :create]

  def index
    @images = Image.without_parents.paginate(page: params[:page],
                                             per_page: 10,
                                             order: :created_at)
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(params[:image])

    if @image.save
      flash[:success] = "Image created"
      redirect_to images_path
    else
      flash[:error] = "Unable to save image: "\
                      "#{@image.errors.full_messages.to_sentence}"
      render :new
    end
  end

  def edit
  end

  def update
    if @image.update_attributes(params[:image])
      flash[:success] = "Image updated"
      redirect_to images_path
    else
      flash[:error] = "Unable to update image"
      render :edit
    end
  end

  def destroy
    @image.destroy
    flash[:success] = "Image deleted"
    redirect_to images_path
  end

protected

  def find_image
    @image = Image.find(params[:id])
  end
end
