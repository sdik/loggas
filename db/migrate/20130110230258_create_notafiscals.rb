class CreateNotafiscals < ActiveRecord::Migration
  def change
    create_table :notafiscals do |t|
      t.integer :numero
      t.date :data
      t.string :cliente
      t.decimal :valor
      t.string :status
      t.boolean :ok

      t.timestamps
    end
  end
end
