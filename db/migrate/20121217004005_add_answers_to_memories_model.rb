class AddAnswersToMemoriesModel < ActiveRecord::Migration
  def change
    add_column :memoria, :wrong_answer, :string
  end
end
