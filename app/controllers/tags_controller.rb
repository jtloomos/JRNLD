class TagsController < ApplicationController
  def create
    @tag = Tag.new(tag_params)
    @tag.user = current_user ### TO BE CONFIRMED WITH PUNDIT SETUP
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.status = "inactive" ### on click of X, status updated to "inactive"
  end

  def create_entry_tag

  end

  def update_entry_tag

  end

  private

  def tag_params
    params.require(:tag).permit(:title)
  end
end
