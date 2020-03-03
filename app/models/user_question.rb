class UserQuestion < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_many :entry_answers
  has_many :entries, through: :entry_answers

  accepts_nested_attributes_for :question
end
