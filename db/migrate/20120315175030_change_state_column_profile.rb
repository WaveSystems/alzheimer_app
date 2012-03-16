class ChangeStateColumnProfile < ActiveRecord::Migration
  def change
    remove_column :profiles, :state
    add_column :profiles, :state, :string
  end
end
