class CreateMemoria < ActiveRecord::Migration
  def change
    create_table :memoria do |t|
      t.string :name
      t.string :answer
      t.has_attached_file :image
      t.timestamps
    end
  end
end
