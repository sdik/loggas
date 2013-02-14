class CreateServicos < ActiveRecord::Migration
  def change
    create_table :servicos do |t|
      t.date :data
      t.integer :cliente_id
      t.string :cidade
      t.string :material
      t.string :status
      t.boolean :tanque
      t.boolean :interlig
      t.string :art
      t.boolean :foto
      t.integer :tecnico_id
      t.integer :consultor_id
      t.string :sistema
      t.boolean :faturado
      t.text :obs

      t.timestamps
    end
  end
end
