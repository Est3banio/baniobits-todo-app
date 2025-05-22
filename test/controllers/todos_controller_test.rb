require "test_helper"

class TodosControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @todo = todos(:one)
    @todo_list = todo_lists(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    get todo_list_todos_url(@todo_list)
    assert_response :success
  end

  test "should get new" do
    get new_todo_list_todo_url(@todo_list)
    assert_response :success
  end

  test "should create todo" do
    assert_difference("Todo.count") do
      post todo_list_todos_url(@todo_list), params: {
        todo: {
          completed: @todo.completed,
          title: @todo.title,
          user_id: @user.id,
          todo_list_id: @todo_list.id
        }
      }
    end

    assert_redirected_to todo_list_url(@todo_list)
  end

  test "should show todo" do
    get todo_url(@todo)
    assert_response :success
  end

  test "should get edit" do
    get edit_todo_url(@todo)
    assert_response :success
  end

  test "should update todo" do
    patch todo_url(@todo), params: { todo: { completed: @todo.completed, title: @todo.title } }
    assert_redirected_to todo_list_url(@todo.todo_list)
  end

  test "should destroy todo" do
    todo_list = @todo.todo_list
    assert_difference("Todo.count", -1) do
      delete todo_url(@todo)
    end

    assert_redirected_to todo_list_url(todo_list)
  end
end
