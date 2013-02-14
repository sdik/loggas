class RemoveNomeFromCliente < ActiveRecord::Migration
  def up
    remove_column :clientes, :nome
  end

  def down
    add_column :clientes, :nome, :string
  end
end
