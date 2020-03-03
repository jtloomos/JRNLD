class EntryTag < ApplicationController
  belongs_to :tag
  belongs_to :entry
end
