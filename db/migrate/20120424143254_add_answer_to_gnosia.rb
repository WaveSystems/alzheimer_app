class AddAnswerToGnosia < ActiveRecord::Migration
  def change
    add_column :gnosia, :answer, :string
  end
end
