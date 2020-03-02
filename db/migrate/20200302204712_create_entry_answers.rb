class CreateEntryAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :entry_answers do |t|
      t.integer :numeric_answer
      t.boolean :boolean_answer
      t.text :details
    end
  end
end
