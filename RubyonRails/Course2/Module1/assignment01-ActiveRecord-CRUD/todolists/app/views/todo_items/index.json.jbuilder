json.array!(@todo_items) do |todo_item|
  json.extract! todo_item, :id, :due_date, :date, :title, :description, :completed, :boolean
  json.url todo_item_url(todo_item, format: :json)
end
