class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  # Get the user form
  def new
    @task = Task.new
  end

  # Create new instance from form
  def create
    @task = Task.new(task_params)
    @task.save
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.update(task_params)
    redirect_to task_path(@task)
  end

  private

  # Strong paramenters
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
