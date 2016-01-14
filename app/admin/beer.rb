ActiveAdmin.register Beer do
  permit_params :name, :description, :style, :abv, :ibu, :color, :file_file_name, :background_image, :beer_image
  form :html => {:multipart => true} do |f|
    f.inputs 'Beer Details' do
      f.input :name, :required => true
      f.input :description, :required => true, :as => :text
      f.input :style, :required => true
      f.input :abv, :label => "ABV", :required => true
      f.input :ibu, :label => "IBU", :required => true
      f.input :color, :as => :string, :hint => "This can either be color or SRM"
    f.inputs "Beer Images" do
      f.has_many :images do |image|
        image.input :file_file_name, :label => "New Image", :as => :file
        image.input :background_image, :label => "Background Image?", :hint => "If checked, this image will become the
        background image on the display page for this particular beer", :as => :boolean
        image.input :beer_image, :label => "Beer Image?", :hint => "If checked, this image will be the bottle image displayed
        for this particular beer"
      end
    end
  end
  f.submit
end
end
