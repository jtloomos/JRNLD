class AddTimestampsToTables < ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :created_at, :datetime, null: false
    add_column :entries, :updated_at, :datetime, null: false

    add_column :entry_answers, :created_at, :datetime, null: false
    add_column :entry_answers, :updated_at, :datetime, null: false

    add_column :entry_tags, :created_at, :datetime, null: false
    add_column :entry_tags, :updated_at, :datetime, null: false

    add_column :questions, :created_at, :datetime, null: false
    add_column :questions, :updated_at, :datetime, null: false

    add_column :tags, :created_at, :datetime, null: false
    add_column :tags, :updated_at, :datetime, null: false

    add_column :user_questions, :created_at, :datetime, null: false
    add_column :user_questions, :updated_at, :datetime, null: false
  end
end
