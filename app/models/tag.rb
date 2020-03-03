class Tag < ApplicationRecord
  belongs_to :user

  has_many :entries, through: :entry_tags
end
