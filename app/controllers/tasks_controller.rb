class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @task = Task.find(params[:id])
  end
  def new
    @task = Task.new
  end
  def create
    task = Task.new(task_params)
    task.completed = false
    task.save
    redirect_to tasks_path
  end
  def edit
  end
  def update
  end
  def destroy
  end

  private

  def task_params
    params.require(:task).permit(:name, :content)
  end
end
