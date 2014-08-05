class Produto < ActiveRecord::Base
  usar_como_dinheiro :valor_compra, :valor_venda
  has_many :vendas, :through => :produto_vendas
  has_many :produto_vendas
end
