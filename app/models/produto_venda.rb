class ProdutoVenda < ActiveRecord::Base
  belongs_to :venda
  belongs_to :produto
end
