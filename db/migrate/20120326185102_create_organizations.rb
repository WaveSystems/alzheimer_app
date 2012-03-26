class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string      :name
      t.string      :descripcion
      t.string      :address
      t.string      :city
      t.string      :county
      t.string      :state
      t.string      :country
      t.string      :phone
      t.timestamps
    end
  end
end
