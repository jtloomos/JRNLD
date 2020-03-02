class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :type
      t.string :start_label
      t.string :end_label
    end
  end
end
