class EntryPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    Entry.find_by("created_at > ?",  1.day.ago).nil?
  end
end
