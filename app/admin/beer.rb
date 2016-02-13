ActiveAdmin.register Beer do
  index do
    column :id
    column :name
    column :sort_order
    actions
  end

  show do

  end
  permit_params :name, :description, :style, :abv, :ibu, :color, :bottle_image, :background_image, :sort_order
  form :html => {:multipart => true} do |f|
    f.inputs 'Beer Details' do
      f.input :sort_order, :as => :number
      f.input :name, :required => true
      f.input :description, :required => true, :as => :text
      f.input :style, :required => true
      f.input :abv, :label => "ABV", :required => true
      f.input :ibu, :label => "IBU", :required => true
      f.input :color, :as => :string, :hint => "This can either be color or SRM"
      f.input :bottle_image, :as => :file, :required => true, :hint => "This will be used as your beer's bottle image"
      f.input :background_image, :as => :file, :required => true,  :hint => "This will be used as the background image on the beer's detail page"
    end
    f.submit
  end
end
