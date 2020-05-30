class UsersController < ApplicationController
  def controller
  end

  def top

  end

  def show
    @user = User.find(params[:id])
    @tasks = @user.tasks
  end

  def updare
  end
end
