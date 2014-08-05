class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :nome
      t.decimal :valor_compra, :precision => 14, :scale => 2
      t.decimal :valor_venda, :precision => 14, :scale => 2
      t.string :ncm
      t.string :quantidade

      t.timestamps
    end
  end
end
