class AddColumnToGnosias < ActiveRecord::Migration
  def change
    add_column :gnosia, :question, :string
  end
end
