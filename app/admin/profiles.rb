ActiveAdmin.register Profile do
  filter :user

  index do |t|
    t.column :id
    t.column :firstname
    t.column :lastname
    t.column :birthdate
    t.column :street
    t.column :number
    t.column :neighborhood
    t.column :city
    t.column :zipcode
    t.column :state
    t.column :country
    t.column :ocupation
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :firstname
      f.input :lastname
      f.input :birthdate, :start_year => 1900
      f.input :street
      f.input :number
      f.input :neighborhood
      f.input :city
      f.input :zipcode
      f.input :state
      f.input :country
      f.input :ocupation
      f.input :bio
    end
    f.buttons
  end
  
end
