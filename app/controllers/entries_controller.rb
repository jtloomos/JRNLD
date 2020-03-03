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
    @entry = Entry.new(user: current_user)
    authorize @entry

    @entry_answers = current_user.user_questions.map do |question|
      EntryAnswer.new(entry: @entry, user_question: question)
    end
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
