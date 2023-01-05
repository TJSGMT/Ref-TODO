class CreateTodoItems < ActiveRecord::Migration[6.1]
  def change
    create_table :todo_items do |t|
      t.string :title
      t.datetime :done_at
      t.datetime :completed_at, default: nil

      t.timestamps
    end
  end
end
