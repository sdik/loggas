class AddClienteIdToNotafiscal < ActiveRecord::Migration
  def change
     remove_column :notafiscals, :cliente
     add_column :notafiscals, :cliente_id, :integer
  end
  
end
