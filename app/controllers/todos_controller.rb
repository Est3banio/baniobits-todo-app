class TodosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_todo_list, only: [:index, :new, :create]
  before_action :set_todo, only: [:show, :edit, :update, :destroy, :toggle]

  # GET /todo_lists/:todo_list_id/todos
  def index
    @categories = Category.all
    @todo = @todo_list.todos.build
    
    if params[:category_id].present?
      @category = Category.find(params[:category_id])
      @todos = @category.todos.where(todo_list: @todo_list).includes(:categories)
    else
      @todos = @todo_list.todos.includes(:categories)
    end
    
    render 'todo_lists/show'
  end

  # GET /todos/1
  def show
  end

  # GET /todo_lists/:todo_list_id/todos/new
  def new
    @todo = @todo_list.todos.build
    @categories = Category.all
  end

  # GET /todos/1/edit
  def edit
    @categories = Category.all
  end

  # POST /todo_lists/:todo_list_id/todos
  def create
    @todo = @todo_list.todos.build(todo_params)
    @todo.user = current_user

    respond_to do |format|
      if @todo.save
        format.html { redirect_to @todo_list, notice: "Task was successfully created." }
        format.json { render :show, status: :created, location: @todo }
      else
        @categories = Category.all
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /todos/1
  def update
    respond_to do |format|
      if @todo.update(todo_params)
        format.html { redirect_to @todo.todo_list, notice: "Task was successfully updated." }
        format.json { render :show, status: :ok, location: @todo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /todos/1
  def destroy
    todo_list = @todo.todo_list
    @todo.destroy!

    respond_to do |format|
      format.html { redirect_to todo_list, status: :see_other, notice: "Task was successfully deleted." }
      format.json { head :no_content }
    end
  end
  
  # PATCH /todos/1/toggle
  def toggle
    @todo.update(completed: !@todo.completed)
    
    respond_to do |format|
      format.html { redirect_to @todo.todo_list, notice: "Todo status updated." }
      format.json { render :show, status: :ok, location: @todo }
    end
  end

  private
    def set_todo_list
      @todo_list = current_user.todo_lists.find(params[:todo_list_id])
    rescue ActiveRecord::RecordNotFound
      redirect_to todo_lists_path, alert: "You don't have access to that todo list."
    end
  
    def set_todo
      @todo = current_user.todos.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to todo_lists_path, alert: "You don't have access to that task."
    end

    def todo_params
      params.require(:todo).permit(:title, :completed, category_ids: [])
    end
end
