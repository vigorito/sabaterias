class CreateProdutoVendas < ActiveRecord::Migration
  def change
    create_table :produto_vendas do |t|
      t.decimal :valor_venda, :precision => 14, :scale => 2
      t.string :quantidade
      t.references :venda, index: true
      t.references :produto, index: true
      t.timestamps
    end
  end
end
