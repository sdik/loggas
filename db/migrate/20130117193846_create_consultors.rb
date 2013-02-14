class CreateConsultors < ActiveRecord::Migration
  def change
    create_table :consultors do |t|
      t.string :nome
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
