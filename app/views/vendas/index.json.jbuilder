json.array!(@vendas) do |venda|
  json.extract! venda, :id, :cliente_id
  json.url venda_url(venda, format: :json)
end
