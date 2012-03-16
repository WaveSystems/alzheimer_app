class AddColumnsToProfile < ActiveRecord::Migration
  def up
    add_column :profiles, :city, :string
    add_column :profiles, :number, :integer
  end

  def down
    remove_column :profiles, :city
    remove_column :profiles, :number
  end
end
