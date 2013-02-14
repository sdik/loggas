# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130125181744) do

  create_table "clientes", :force => true do |t|
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "uf"
    t.string   "telefone"
    t.string   "email"
    t.string   "contato"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "nome"
  end

  create_table "consultors", :force => true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "detales", :force => true do |t|
    t.integer  "produto_id"
    t.integer  "quantidade"
    t.decimal  "unitario"
    t.decimal  "total"
    t.integer  "implate_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "implates", :force => true do |t|
    t.date     "data"
    t.integer  "cliente_id"
    t.string   "status"
    t.integer  "quantidade"
    t.string   "tanque"
    t.boolean  "ok"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "notafiscals", :force => true do |t|
    t.integer  "numero"
    t.date     "data"
    t.decimal  "valor"
    t.string   "status"
    t.boolean  "ok"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "cliente_id"
  end

  create_table "produtos", :force => true do |t|
    t.string   "descricao"
    t.integer  "quantidade"
    t.decimal  "compra"
    t.decimal  "venda"
    t.integer  "minimo"
    t.string   "fornecedor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "servicos", :force => true do |t|
    t.date     "data"
    t.integer  "cliente_id"
    t.string   "cidade"
    t.string   "material"
    t.string   "status"
    t.boolean  "tanque"
    t.boolean  "interlig"
    t.string   "art"
    t.boolean  "foto"
    t.integer  "tecnico_id"
    t.integer  "consultor_id"
    t.string   "sistema"
    t.boolean  "faturado"
    t.text     "obs"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "tecnicos", :force => true do |t|
    t.string   "nome"
    t.string   "telefone"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
