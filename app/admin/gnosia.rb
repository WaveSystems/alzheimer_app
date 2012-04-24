ActiveAdmin.register Gnosia do

  form do |f|
    f.inputs do
      f.input :name
      f.input :answer
      f.input :image, :as => :file
    end
    f.buttons
  end

  index :as => :grid do |gnosia|
    link_to(image_tag(gnosia.image.url(:medium)))
  end
  
end
