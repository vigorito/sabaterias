class CreateVendas < ActiveRecord::Migration
  def change
    create_table :vendas do |t|
      t.references :cliente, index: true

      t.timestamps
    end
  end
end
