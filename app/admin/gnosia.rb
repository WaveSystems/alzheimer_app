ActiveAdmin.register Gnosia do

  form do |f|
    f.inputs do
      f.input :name
      f.input :image, :as => :file
    end
    f.buttons
  end
  
end
