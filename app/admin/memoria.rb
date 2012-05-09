ActiveAdmin.register Memoria do
  
  form do |f|
    f.inputs do
      f.input :name
      f.input :answer_raw, :label => 'Answer'
      f.input :image, :as => :file
    end
    f.buttons
  end

  index :as => :grid do |memoria|
    link_to(image_tag(memoria.image.url(:small)))
  end
  
end
