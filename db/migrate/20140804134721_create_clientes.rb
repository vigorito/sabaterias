class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :razao_social
      t.string :cnpj
      t.string :endereco

      t.timestamps
    end
  end
end
