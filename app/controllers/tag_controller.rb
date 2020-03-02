class TagController < ApplicationController
  def create
    @tag = Tag.new(tag_params)
    @tag.user = current_user ### TO BE CONFIRMED WITH PUNDIT SETUP
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.status = "inactive" ### on click of X, status updated to "inactive"
  end

  def destroy
    ### I don't think we need this?
    # @tag = Tag.find(params[:id])
    # @tag.destroy!
  end

  private

  def tag_params
    params.require(:tag).permit(:title)
  end
end
