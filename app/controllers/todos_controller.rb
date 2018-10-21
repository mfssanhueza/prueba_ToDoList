class TodosController < ApplicationController
  before_action :set_todo, only: %i[show edit update destroy complete]

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(todo_params)
    redirect_to todos_path
  end

  def show
  end

  def edit
  end

  def update
    @todo.update(todo_params)
    redirect_to todos_path
  end

  def destroy
    @todo.destroy
    redirect_to todos_path
  end

  def complete
    @todo.update(completed: true)
    redirect_to todos_path
  end

  def list
    @todos = Todo.all
  end

  private
  def todo_params
    params.require(:todo).permit(:description, :completed)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end
end
