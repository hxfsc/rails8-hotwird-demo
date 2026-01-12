class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @task = Task.new
  end

  def edit
    @task = Task.find params[:id]
  end

  def update
    @task = Task.find(params[:id])
    if @task.update task_params
      redirect_to tasks_url, notice: "任务更新成功"
    else
        render :edit
    end
  end


  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_url, notice: "任务删除成功"
  end


  def create
    @task = Task.new task_params
    if @task.save
      redirect_to tasks_url, notice: "新建任务成功"
    else
      render :new
    end
  end


  def toggle
    @task = Task.find(params[:id])
    @task.update(completed: params[:completed])

    render json: { message: "完成" }
  end



  private

    def task_params
      params.expect(task: %w[ description ])
    end
end
