class EntriesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @entry = Entry.new(user: current_user)
    authorize @entry

    @entry_answers = current_user.user_questions.map do |question|
      Entry_answer.new(entry: @entry, user_question: question)
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
