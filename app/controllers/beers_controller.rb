class BeersController < ApplicationController
  def index
    @beer = Beer.all
  end

  def new
    @beer = Beer.new
  end

  def show
    @beer = Beer.find(params[:id])
    @related_beers = related_beer(@beer)
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

  def related_beer(beer)
    Beer.where("style LIKE (?) and id <> (?)", beer.style, beer.id).take(3)
  end
end
