class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def create
    ### form at bottom of questions page to add a new question
    @question = Question.new(question_params)
    @question.user = current_user ## FUTURE PUNDIT
    @question.save!
    ### call NEW/CREATE method for USER_QUESTION
  end

  def update
    ## THIS ONE IS FOR UPDATING USER_QUESTIONS.
  end

  private

  def question_params
    params.require(:question).permit(:title, :type, :start_label, :end_label, :topic_id)
  end
end
