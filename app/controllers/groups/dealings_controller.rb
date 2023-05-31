class Groups::DealingsController < ApplicationController
  def index
    @category = current_user.groups.find(params[:category_id])
    @page_title = "TRANSACTIONS"
    @back_path = categories_path
    @transactions = @category.dealings.order(created_at: :desc)
  end

  def new
    @transaction = Dealing.new
    @page_title = 'NEW TRANSACTION'
    @category = current_user.groups.find(params[:category_id])
    @back_path = category_transactions_path(@category)
    @categories = current_user.groups
  end

  def create
    @category = current_user.groups.find(params[:group_id])
    @transaction = Dealing.new(dealing_params)
    @transaction.author = current_user
  
    # Add groups to transaction
    params[:dealing][:groups].each do |group_id|
      next if group_id.blank?
      group = current_user.groups.find(group_id)
      @transaction.groups << group
    end
  
    if @transaction.save
      redirect_to category_transactions_path(@category)
    else
      flash[:alert] = 'Transaction could not be saved!'
      render :new
    end
  end

  def dealing_params
    params.require(:dealing).permit(:name, :amount)
  end
end
