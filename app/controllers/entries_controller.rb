class EntriesController < ApplicationController
  def index
    @entries = policy_scope(Entry)
  end

  def show
    @entry = Entry.find(params[:id])
    @user = current_user
    authorize @user
  end

  def new
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
