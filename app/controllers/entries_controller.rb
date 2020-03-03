class EntriesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @entry = Entry.new(user: current_user)
    authorize @entry
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
