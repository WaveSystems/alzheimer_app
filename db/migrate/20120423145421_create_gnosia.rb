class CreateGnosia < ActiveRecord::Migration
  def change
    create_table :gnosia do |t|

      t.timestamps
    end
  end
end
