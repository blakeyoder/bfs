ActiveAdmin.register Beer do
  def index
    @page_title = "BEERS"
  end
  permit_params :name, :description, :style, :abv, :ibu, :color, :bottle_image, images_attributes: [:id, :title, :file, :background_image, :beer_id]
  form :html => {:multipart => true} do |f|
    f.inputs 'Beer Details' do
      f.input :name, :required => true
      f.input :description, :required => true, :as => :text
      f.input :style, :required => true
      f.input :abv, :label => "ABV", :required => true
      f.input :ibu, :label => "IBU", :required => true
      f.input :color, :as => :string, :hint => "This can either be color or SRM"
      f.input :bottle_image, :as => :file, :hint => "This will be used as your beer's bottle image"
      # f.inputs "Beer Images" do
      #   f.has_many :images do |image|
      #     image.input :file, :label => "Image", :as => :file
      #     image.input :background_image, :label => "Background Image?", :hint => "If checked, this image will become the
      #     background image on the display page for this particular beer", :as => :boolean
      #   end
      # end
    end
    f.submit
  end
end
