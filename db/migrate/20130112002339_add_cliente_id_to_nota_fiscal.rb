class AddClienteIdToNotaFiscal < ActiveRecord::Migration
  def change
     add_column :notafiscals, :cliente, :integer
  end
end
