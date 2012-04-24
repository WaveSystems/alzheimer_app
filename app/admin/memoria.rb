ActiveAdmin.register Memoria do
  
  form do |f|
    f.inputs do
      f.input :name
      f.input :answer
      f.input :image, :as => :file
    end
    f.buttons
  end

  index :as => :grid do |memoria|
    link_to(image_tag(memoria.image.url(:medium)))
  end
  
end