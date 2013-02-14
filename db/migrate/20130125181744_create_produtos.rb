class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.integer :quantidade
      t.decimal :compra
      t.decimal :venda
      t.integer :minimo
      t.string :fornecedor

      t.timestamps
    end
  end
end
