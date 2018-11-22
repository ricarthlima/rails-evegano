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

ActiveRecord::Schema.define(version: 2018_11_22_212728) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "componente_nome_alternativos", force: :cascade do |t|
    t.bigint "componente_id"
    t.string "nome_alternativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["componente_id"], name: "index_componente_nome_alternativos_on_componente_id"
  end

  create_table "componentes", force: :cascade do |t|
    t.string "cod_europeu"
    t.string "cod_INS"
    t.string "nome", null: false
    t.text "descricao", null: false
    t.integer "class_vegan", null: false
    t.text "justificativa", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "marca_nome_alternativos", force: :cascade do |t|
    t.bigint "marca_id"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["marca_id"], name: "index_marca_nome_alternativos_on_marca_id"
  end

  create_table "marcas", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.integer "class_vegan"
    t.text "justificativa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "produto_imagems", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cover_file_name"
    t.string "cover_content_type"
    t.integer "cover_file_size"
    t.datetime "cover_updated_at"
    t.integer "tipo"
  end

  create_table "produto_nome_alternativos", force: :cascade do |t|
    t.bigint "produto_id"
    t.string "nome_alternativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_produto_nome_alternativos_on_produto_id"
  end

  create_table "produto_possui_componentes", force: :cascade do |t|
    t.bigint "produto_id"
    t.bigint "componente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["componente_id"], name: "index_produto_possui_componentes_on_componente_id"
    t.index ["produto_id"], name: "index_produto_possui_componentes_on_produto_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "cod_barras"
    t.string "nome"
    t.bigint "marca_id"
    t.text "descricao"
    t.integer "class_vegan"
    t.text "justificativa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["marca_id"], name: "index_produtos_on_marca_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "usuario_avalia_marcas", force: :cascade do |t|
    t.bigint "usuario_id"
    t.bigint "marca_id"
    t.integer "estrelas"
    t.text "comentario"
    t.string "dt_avaliacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["marca_id"], name: "index_usuario_avalia_marcas_on_marca_id"
    t.index ["usuario_id"], name: "index_usuario_avalia_marcas_on_usuario_id"
  end

  create_table "usuario_avalia_produtos", force: :cascade do |t|
    t.bigint "usuario_id"
    t.bigint "produto_id"
    t.integer "estrelas"
    t.text "comentario"
    t.string "dt_avaliacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_usuario_avalia_produtos_on_produto_id"
    t.index ["usuario_id"], name: "index_usuario_avalia_produtos_on_usuario_id"
  end

  create_table "usuario_busca_componentes", force: :cascade do |t|
    t.bigint "usuario_id"
    t.bigint "componente_id"
    t.string "dt_busca"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["componente_id"], name: "index_usuario_busca_componentes_on_componente_id"
    t.index ["usuario_id"], name: "index_usuario_busca_componentes_on_usuario_id"
  end

  create_table "usuario_busca_marcas", force: :cascade do |t|
    t.bigint "usuario_id"
    t.bigint "marca_id"
    t.string "dt_busca"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["marca_id"], name: "index_usuario_busca_marcas_on_marca_id"
    t.index ["usuario_id"], name: "index_usuario_busca_marcas_on_usuario_id"
  end

  create_table "usuario_busca_produtos", force: :cascade do |t|
    t.bigint "usuario_id"
    t.bigint "produto_id"
    t.string "dt_busca"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produto_id"], name: "index_usuario_busca_produtos_on_produto_id"
    t.index ["usuario_id"], name: "index_usuario_busca_produtos_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nome"
    t.string "sobrenome"
    t.string "cep"
    t.string "pais"
    t.string "telefone"
    t.integer "tipo_usuario", default: 4, null: false
    t.boolean "dev"
    t.string "provider", limit: 50, default: "", null: false
    t.string "uid", limit: 500, default: "", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string "foto"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  add_foreign_key "componente_nome_alternativos", "componentes"
  add_foreign_key "marca_nome_alternativos", "marcas"
  add_foreign_key "produto_nome_alternativos", "produtos"
  add_foreign_key "produto_possui_componentes", "componentes"
  add_foreign_key "produto_possui_componentes", "produtos"
  add_foreign_key "produtos", "marcas"
  add_foreign_key "usuario_avalia_marcas", "marcas"
  add_foreign_key "usuario_avalia_marcas", "usuarios"
  add_foreign_key "usuario_avalia_produtos", "produtos"
  add_foreign_key "usuario_avalia_produtos", "usuarios"
  add_foreign_key "usuario_busca_componentes", "componentes"
  add_foreign_key "usuario_busca_componentes", "usuarios"
  add_foreign_key "usuario_busca_marcas", "marcas"
  add_foreign_key "usuario_busca_marcas", "usuarios"
  add_foreign_key "usuario_busca_produtos", "produtos"
  add_foreign_key "usuario_busca_produtos", "usuarios"
end
