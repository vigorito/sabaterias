json.array!(@produtos) do |produto|
  json.extract! produto, :id, :nome, :valor_compra, :valor_venda, :ncm, :quantidade
  json.url produto_url(produto, format: :json)
end
