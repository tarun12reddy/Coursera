class ChangeYearToIntegerFromString < ActiveRecord::Migration
  def change
  	change_column :profiles, :birth_year, :integer
  	remove_column :profiles, :integer
  	rename_column :profiles, :first_nmae, :first_name
  	remove_column :todo_lists, :date
  	change_column :todo_lists, :list_due_date, :date
  	remove_column :todo_items, :boolean
  	remove_column :todo_items, :date
  	change_column :todo_items, :due_date, :date
  	change_column :todo_items, :completed, :boolean
  end
end
