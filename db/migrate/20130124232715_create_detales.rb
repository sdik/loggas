class CreateDetales < ActiveRecord::Migration
  def change
    create_table :detales do |t|
      t.integer :produto_id
      t.integer :quantidade
      t.decimal :unitario
      t.decimal :total
      t.references :implate
      
      t.timestamps
    end
  end
end
