json.array!(@presupuestos) do |presupuesto|
  json.extract! presupuesto, :id, :codigoalg, :series, :acabado
  json.url presupuesto_url(presupuesto, format: :json)
end
