class TodoListsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_todo_list, only: [ :show, :edit, :update, :destroy ]

  def index
    @todo_lists = current_user.todo_lists
  end

  def show
    @categories = Category.all
    @todo = @todo_list.todos.build
    @todos = @todo_list.todos.includes(:categories)
  end

  def new
    @todo_list = current_user.todo_lists.build
  end

  def create
    @todo_list = current_user.todo_lists.build(todo_list_params)

    if @todo_list.save
      redirect_to @todo_list, notice: "Todo list was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @todo_list.update(todo_list_params)
      redirect_to @todo_list, notice: "Todo list was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @todo_list.destroy
    redirect_to todo_lists_path, notice: "Todo list was successfully deleted."
  end

  private

  def set_todo_list
    @todo_list = current_user.todo_lists.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to todo_lists_path, alert: "You don't have access to that todo list."
  end

  def todo_list_params
    params.require(:todo_list).permit(:name)
  end
end
