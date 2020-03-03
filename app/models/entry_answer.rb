class EntryAnswer < ApplicationController
  belongs_to :entry
  belongs_to :user_questions
end
