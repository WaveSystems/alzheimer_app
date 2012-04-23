class CreateGnosia < ActiveRecord::Migration
  def change
    create_table :gnosia do |t|
      t.string :name
      t.has_attached_file :image
      t.timestamps
    end
  end
end
