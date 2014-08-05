class AddObservacaoToProdutoVendas < ActiveRecord::Migration
  def change
    add_column :produto_vendas, :observacao, :string
  end
end
