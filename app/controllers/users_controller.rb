class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update!(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :first_name, :last_name, :birthday, :gender)
  end
end
