module BeersHelper
  def show_bg_img
    @beer.images.each do |image|
      if image.background_image?
        return image.file.url
      end
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
