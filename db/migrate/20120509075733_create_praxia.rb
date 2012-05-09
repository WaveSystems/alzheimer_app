class CreatePraxia < ActiveRecord::Migration
  def change
    create_table :praxia do |t|
      t.string :name

      t.timestamps
    end
  end
end
