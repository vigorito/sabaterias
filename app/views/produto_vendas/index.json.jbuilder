json.array!(@produto_vendas) do |produto_venda|
  json.extract! produto_venda, :id, :valor_venda, :quantidade, :venda_id, :produto_id
  json.url produto_venda_url(produto_venda, format: :json)
end
