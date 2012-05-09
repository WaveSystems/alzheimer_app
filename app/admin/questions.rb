ActiveAdmin.register Question do
  form do |f|
    f.inputs do
      f.input :question
      f.input :answer_raw, :label => 'Answer'
    end
    f.buttons
  end
end
