class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show #show all tasks
    @tasks = Task.find(params[:id])
  end

  def new
    @task = Task.new

  end

  def create
   @task = Task.new(task_params)
   @task.save
   redirect_to task_path(@task)
  end


  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    @task.save
    redirect_to tasks_path(@tasks)
  end

  def delete
    @tasks = Task.find(params[:id])
  end

  def destroy
    @tasks = Task.find(params[:id])
    @tasks.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :detail)
  end
end
