class GroupsController < ApplicationController
  def index
    @page_title = 'CATEGORIES'
    @categories = current_user.groups
  end

  def new
    @group = Group.new
    @page_title = 'NEW CATEGORY'
    @back_path = categories_path
  end

  def create
    @group = Group.new(group_params)
    @group.author = current_user

    if @group.save
      redirect_to categories_path
    else
      flash[:alert] = 'Category could not be saved!'
      render :new
    end
  end

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
