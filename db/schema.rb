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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140804155544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: true do |t|
    t.string   "nome"
    t.string   "razao_social"
    t.string   "cnpj"
    t.string   "endereco"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produto_vendas", force: true do |t|
    t.decimal  "valor_venda", precision: 14, scale: 2
    t.string   "quantidade"
    t.integer  "venda_id"
    t.integer  "produto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "observacao"
  end

  add_index "produto_vendas", ["produto_id"], name: "index_produto_vendas_on_produto_id", using: :btree
  add_index "produto_vendas", ["venda_id"], name: "index_produto_vendas_on_venda_id", using: :btree

  create_table "produtos", force: true do |t|
    t.string   "nome"
    t.decimal  "valor_compra", precision: 14, scale: 2
    t.decimal  "valor_venda",  precision: 14, scale: 2
    t.string   "ncm"
    t.string   "quantidade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendas", force: true do |t|
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vendas", ["cliente_id"], name: "index_vendas_on_cliente_id", using: :btree

end
