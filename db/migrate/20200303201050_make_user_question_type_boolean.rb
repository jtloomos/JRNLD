class MakeUserQuestionTypeBoolean < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_questions, :status
    add_column :user_questions, :status, :boolean, default: true
  end
end
