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

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to user_path(current_user.id)
  end

  def task_params
    params.require(:task).permit(:task_name, :content).merge(user_id: current_user.id)
  end
end
