class AddWrongAnswerColumnGnosia < ActiveRecord::Migration
  def up
    add_column :gnosia, :wrong_answer, :string
  end

  def down
    remove_column :gnosia, :wrong_answer
  end
end
