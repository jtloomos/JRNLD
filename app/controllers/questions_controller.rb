class QuestionsController < ApplicationController

  skip_after_action :verify_policy_scoped, only: :index

  def index
    @user_questions = current_user.user_questions
    @questions = []
    @user_questions.each do |user_question|
      @questions << Question.find(user_question.question_id)
    end
    # will need to also display all public questions matching selected TOPICS
  end

  def create
    ### form at bottom of questions page to add a new question
    @question = Question.new(question_params)
    @question.user = current_user ## FUTURE PUNDIT
    @question.save!
    ### call NEW/CREATE method for USER_QUESTION
  end

  def update
    @question = Question.find(params[:id])
    authorize @question
    @user_question = UserQuestion.find(@question.id)
    if params[:status].present?
      @user_question.update(status: !@user_question.status)
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :type, :start_label, :end_label, :topic_id)
  end
end
