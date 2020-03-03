class Question < ApplicationRecord
  belongs_to :user
  has_many :user_questions
  belongs_to :topic
end
