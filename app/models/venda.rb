class Venda < ActiveRecord::Base
  belongs_to :cliente
  has_many :produtos, :through => :produto_vendas
  has_many :produto_vendas
end
