json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :email
  json.url cliente_url(cliente, format: :json)
end
