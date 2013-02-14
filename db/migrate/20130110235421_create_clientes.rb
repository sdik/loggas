class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :uf
      t.string :telefone
      t.string :email
      t.string :contato

      t.timestamps
    end
  end
end
