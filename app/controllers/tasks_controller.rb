class TasksController < ApplicationController
  def index
    @tasks = Task.includes(:user)   
  end

  def new
    unless user_signed_in?
      redirect_to root_path
    end
    @task = Task.new
  end

  def create
    unless user_signed_in?
      redirect_to root_path
    end
    Task.create(task_params)
    redirect_to user_path(current_user.id)

  end

  def show
    unless user_signed_in?
      redirect_to root_path
    end
    @task = Task.find(params[:id])
  end

  def update
    unless user_signed_in?
      redirect_to root_path
    end
    @user = User.find(current_user.id)                #usersテーブルからログイン中ユーザーのIDを取得

    @task = Task.find(params[:id])                    #tasksテーブルから現在のタスクのIDを取得
    @task.update(task_exp: @task.task_exp + 25)       #tasksテーブルのtask_expカラムに加算する
    @level = @task.task_level                         #tasksテーブルから今のtask_levelを取得して@levelに代入
    if @task.task_exp >= 101                          #【分岐】もしtask_expが100以上になった場合
      @task.update(task_level: @task.task_level + 1)  #task_levelを加算する
      
      if @level < @task.task_level                    #【分岐】もし@levelより加算後のtask_levelが大きい場合
        @user.update(level: @user.level + 1)          #@user.levelを加算する
        @task.update(task_exp: @task.task_exp = 0)      #task_expを0にする
        flash[:notice] = "おめでとうございます！あなたのLevelが#{@user.level}になりました"
        redirect_to user_path(current_user.id)
      end
    end
  end

  def levelup

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
