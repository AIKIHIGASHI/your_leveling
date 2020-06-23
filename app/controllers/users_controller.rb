class UsersController < ApplicationController
  def controller
  end

  def top

  end

  def show
    unless user_signed_in?
      redirect_to root_path
    end
    @user = User.find(params[:id])
    @tasks = @user.tasks.order(:id) 
  end

  def update
    unless user_signed_in?
      redirect_to root_path
    end
    @user = User.find(params[:id])

  end
end
