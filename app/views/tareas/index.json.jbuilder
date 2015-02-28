json.array!(@tareas) do |tarea|
  json.extract! tarea, :id
  json.url tarea_url(tarea, format: :json)
end
