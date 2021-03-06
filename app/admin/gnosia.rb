ActiveAdmin.register Gnosia do

  form do |f|
    f.inputs do
      f.input :name
      f.input :question
      f.input :answer_raw, label: 'Answers'
      f.input :wrong_answer_raw, label: 'Wrong answers'
      f.input :image, as: :file
    end
    f.buttons
  end

  index as: :grid do |gnosia|
    link_to(image_tag(gnosia.image.url(:medium)), admin_gnosium_path(gnosia))
  end
  
end
