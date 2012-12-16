ActiveAdmin.register Praxia do

  form do |f|
    f.inputs do
      f.input :name
      f.input :image, :as => :file
    end
    f.buttons
  end

  index :as => :grid do |praxia|
    link_to(image_tag(praxia.image.url(:medium)), admin_praxium_path(praxia))
  end
  
end
