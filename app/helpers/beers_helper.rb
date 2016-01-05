module BeersHelper
  def show_bg_img
    @beer.images.each do |image|
      if image.background_image?
        return image.file.url
      end
    end
  end
end
