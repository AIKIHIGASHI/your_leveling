class TasksController < ApplicationController
  def index
    @tasks = Task.includes(:user)
    
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)
    redirect_to user_path(current_user.id)

  end

  def show
    @task = Task.find(params[:id])
  end

  def update
    @user = User.find(current_user.id)
    @task = Task.find(params[:id])
    @task.update(task_exp: @task.task_exp + 100)
    @level = @task.task_level
    if @task.task_exp % 500 == 0
      @task.update(task_level: @task.task_level + 1)
      if @level < @task.task_level
        @user.update(level: @user.level + 1)
      end
    end

    redirect_to user_path(current_user.id)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to user_path(current_user.id)
  end

  def task_params
    params.require(:task).permit(:task_name, :content).merge(user_id: current_user.id)
  end
end
