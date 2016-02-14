class BeersController < ApplicationController
  def index
    @beer = Beer.all.order(sort_order: :asc)
  end

  def new
    @beer = Beer.new
  end

  def show
    @beer = Beer.friendly.find(params[:id])
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
    params.require(:beer).permit(:name, :style, :abv, :ibu, :color, :description, :bottle_image, :sort_order, :slug)
  end

  def related_beer(beer)
    Beer.where("style LIKE (?) and id <> (?)", beer.style, beer.id).take(3)
  end
end
