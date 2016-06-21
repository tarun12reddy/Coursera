class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :due_date
      t.string :date
      t.string :title
      t.string :description
      t.string :completed
      t.string :boolean

      t.timestamps null: false
    end
  end
end
