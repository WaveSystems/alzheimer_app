class CreateGnosias < ActiveRecord::Migration
  def change
    create_table :gnosias do |t|
      t.string :name
      t.has_attached_file :image

      t.timestamps
    end
  end
end
