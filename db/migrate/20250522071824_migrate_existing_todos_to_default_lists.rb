class MigrateExistingTodosToDefaultLists < ActiveRecord::Migration[8.0]
  def up
    # Create default todo list for each user
    User.find_each do |user|
      todo_list = user.todo_lists.create!(name: "My Todo List")
      
      # Move all existing todos to the default list
      user.todos.update_all(todo_list_id: todo_list.id)
    end
    
    # Now make the todo_list reference required
    change_column_null :todos, :todo_list_id, false
  end
  
  def down
    # Make todo_list_id nullable again
    change_column_null :todos, :todo_list_id, true
    
    # Remove the association
    Todo.update_all(todo_list_id: nil)
  end
end
