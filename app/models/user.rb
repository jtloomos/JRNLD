class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :tags
  has_many :entries
  has_many :user_questions
  has_many :questions
  has_many :entry_tags, through: :entries
  has_many :topics, through: :questions
end
