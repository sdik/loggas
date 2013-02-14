class RemoveClienteToNotafiscal < ActiveRecord::Migration
  def up
    remove_column :notafiscals, :cliente
  end

  def down
    add_column :notafiscals, :cliente, :string
  end
end
