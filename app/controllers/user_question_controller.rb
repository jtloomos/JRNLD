class UserQuestionController < ApplicationController
  def new
    # Do we need this?
  end

  def create
    @user_question = UserQuestion.new(user_question_params)
    @user_question.user = current_user #FUTURE PUNDIT
    @user_question.question ### How to grab @question's ID from the CREATE question method?
    @user_question.save!
  end

  def edit
    # Do we really need this?
  end

  def update
    @user_question = UserQuestion.find(params[:id])
    @user_question.update!(user_question_params)
  end

  def user_question_params
    params.require(:user_question).permit(:frequency, :active)
  end
end
