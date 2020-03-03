class EntryAnswer < ApplicationRecord
  belongs_to :entry
  belongs_to :user_questions
end
