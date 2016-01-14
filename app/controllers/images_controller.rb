class ImagesController < ApplicationController
  before_filter :set_beer
  def show
    @image = @beer.images.find(params[:id])
  end

  def new
    @image = @beer.images.new
  end

  def create
    @image = @beer.images.create(image_params)
    @image.beer = @beer
    if @image.save
      redirect_to @beer
    else
      render :new
    end
  end

  def image_params
    params.require(:image).permit(:title, :file, :background_image, :beer_image)
  end

  private
  def set_beer
    @beer = Beer.find(params[:beer_id])
  end
end
