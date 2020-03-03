class RenameTypeColumnInQuestions < ActiveRecord::Migration[5.2]
  def change
    rename_column :questions, :type, :answer_type
  end
end
