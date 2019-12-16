class CreateTodoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_items do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
