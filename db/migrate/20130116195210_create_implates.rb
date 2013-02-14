class CreateImplates < ActiveRecord::Migration
  def change
    create_table :implates do |t|
      t.date :data
      t.integer :cliente_id
      t.string :status
      t.integer :quantidade
      t.string :tanque
      t.boolean :ok

      t.timestamps
    end
  end
end
