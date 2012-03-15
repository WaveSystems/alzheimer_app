class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string    :firstname
      t.string    :lastname
      t.date      :birthdate
      t.string    :street
      t.string    :neighborhood
      t.string    :zipcode
      t.integer   :state
      t.string    :country
      t.string    :tutor_name
      t.string    :ocupation
      t.text      :bio
      t.timestamps
    end
  end
end
