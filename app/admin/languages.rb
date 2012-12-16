ActiveAdmin.register Language do

  form do |f|
    f.inputs do
      f.input :name
      f.input :image, :as => :file
    end
    f.buttons
  end

  index :as => :grid do |language|
    link_to(image_tag(language.image.url(:medium)), admin_language_path(language))
  end
  
end
