module BeersHelper
  def show_bg_img(beer)
    if beer.background_image?
      beer.background_image
    else
      ""
    end
  end

  def show_bottle_img(beer)
    if beer.bottle_image?
      beer.bottle_image
    else
      "generalbeer.png"
    end
  end

end
