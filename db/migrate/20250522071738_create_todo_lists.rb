class CreateTodoLists < ActiveRecord::Migration[8.0]
  def change
    create_table :todo_lists do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
