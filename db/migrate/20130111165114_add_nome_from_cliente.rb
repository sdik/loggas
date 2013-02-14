class AddNomeFromCliente < ActiveRecord::Migration
  def change
    add_column :clientes, :nome, :string

  end
end
