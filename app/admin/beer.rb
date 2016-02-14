ActiveAdmin.register Beer do
  index do
    column :id
    column :name
    column :sort_order
    actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :style
      row :abv
      row :ibu
      row :color
      row :bottle_image do
        image_tag beer.bottle_image(:small)
      end
      row :background_image do
        image_tag beer.background_image(:small)
      end
    end
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
      f.input :bottle_image, :as => :file, :required => true, :hint => image_tag(f.object.bottle_image.url(:small))
      f.input :background_image, :as => :file, :required => true,  :hint => image_tag(f.object.background_image.url(:small))
    end
    f.submit
  end
end
