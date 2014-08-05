json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :razao_social, :cnpj, :endereco
  json.url cliente_url(cliente, format: :json)
end
