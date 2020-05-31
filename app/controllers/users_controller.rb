class UsersController < ApplicationController
  def controller
  end

  def top

  end

  def show
    @user = User.find(params[:id])
    @tasks = @user.tasks

  end

  def update
    @user = User.find(params[:id])

  end
end
