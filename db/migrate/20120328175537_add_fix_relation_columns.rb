class AddFixRelationColumns < ActiveRecord::Migration
  def change
    remove_column :organizations, :user_id
    add_column :organizations, :application_admin_user_id, :integer
  end
end
