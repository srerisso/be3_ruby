json.array!(@todos) do |todo|
  json.extract! todo, :id, :texto
  json.url todo_url(todo, format: :json)
end
