class Entry < ApplicationRecord
  belongs_to :user
  has_many :tags, through: :entry_tags
  has_many :entry_answers
  has_many :user_questions, through: :entry_answers
end
