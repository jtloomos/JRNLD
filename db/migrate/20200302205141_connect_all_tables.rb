class ConnectAllTables < ActiveRecord::Migration[5.2]
  def change
    add_reference :questions, :user, foreign_key: true

    add_reference :questions, :topic, foreign_key: true

    add_reference :user_questions, :user, foreign_key: true
    add_reference :user_questions, :question, foreign_key: true

    add_reference :entry_answers, :entry, foreign_key: true
    add_reference :entry_answers, :user_question, foreign_key: true

    add_reference :entries, :user, foreign_key: true

    add_reference :entry_tags, :entry, foreign_key: true
    add_reference :entry_tags, :tag, foreign_key: true

    add_reference :tags, :user, foreign_key: true
  end
end
