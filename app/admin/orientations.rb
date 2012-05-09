ActiveAdmin.register Orientation do

  form do |f|
    f.inputs do
      f.input :name
      f.input :image, :as => :file
    end
    f.buttons
  end

  index :as => :grid do |orientation|
    link_to(image_tag(orientation.image.url(:medium)))
  end
  
end
