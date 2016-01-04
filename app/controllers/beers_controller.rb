class BeersController < ApplicationController
  def new
    @beer = Beer.new
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def create
    @beer = Beer.create(beer_params)
    if @beer.save
      redirect_to @beer
    else
      render :new
    end
  end

  def beer_params
    params.require(:beer).permit(:name, :style, :abv, :ibu, :color, :description)
  end
end