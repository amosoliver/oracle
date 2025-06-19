# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_06_19_234338) do
  create_table "g_estados", force: :cascade do |t|
    t.string "descricao"
    t.integer "g_pais_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["g_pais_id"], name: "index_g_estados_on_g_pais_id"
  end

  create_table "g_municipios", force: :cascade do |t|
    t.string "descricao"
    t.integer "g_estado_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["g_estado_id"], name: "index_g_municipios_on_g_estado_id"
  end

  create_table "g_paises", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "g_pessoas", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "i_ambientes_prediais", force: :cascade do |t|
    t.string "descricao"
    t.integer "i_predio_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["i_predio_id"], name: "index_i_ambientes_prediais_on_i_predio_id"
  end

  create_table "i_predios", force: :cascade do |t|
    t.string "nome_fantasia"
    t.string "cnpj"
    t.integer "g_municipio_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["g_municipio_id"], name: "index_i_predios_on_g_municipio_id"
  end

  create_table "r_cargos", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "r_contrato_servidores", force: :cascade do |t|
    t.string "matricula"
    t.integer "g_pessoa_id", null: false
    t.integer "r_cargo_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["g_pessoa_id"], name: "index_r_contrato_servidores_on_g_pessoa_id"
    t.index ["r_cargo_id"], name: "index_r_contrato_servidores_on_r_cargo_id"
  end

  create_table "r_estruturas_organizacionais", force: :cascade do |t|
    t.integer "i_ambiente_predial_id", null: false
    t.integer "r_organizacional_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["i_ambiente_predial_id"], name: "index_r_estruturas_organizacionais_on_i_ambiente_predial_id"
    t.index ["r_organizacional_id"], name: "index_r_estruturas_organizacionais_on_r_organizacional_id"
  end

  create_table "r_lotacoes_organizacionais", force: :cascade do |t|
    t.integer "r_contrato_servidor_id", null: false
    t.string "r_estrutura_organizacional"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["r_contrato_servidor_id"], name: "index_r_lotacoes_organizacionais_on_r_contrato_servidor_id"
  end

  create_table "r_organizacionais", force: :cascade do |t|
    t.string "descricao"
    t.integer "r_tipo_organizacional_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["r_tipo_organizacional_id"], name: "index_r_organizacionais_on_r_tipo_organizacional_id"
  end

  create_table "r_tipos_organizacionais", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "g_estados", "g_paises"
  add_foreign_key "g_municipios", "g_estados"
  add_foreign_key "i_ambientes_prediais", "i_predios"
  add_foreign_key "i_predios", "g_municipios"
  add_foreign_key "r_contrato_servidores", "g_pessoas"
  add_foreign_key "r_contrato_servidores", "r_cargos"
  add_foreign_key "r_estruturas_organizacionais", "i_ambientes_prediais"
  add_foreign_key "r_estruturas_organizacionais", "r_organizacionais"
  add_foreign_key "r_lotacoes_organizacionais", "r_contrato_servidores"
  add_foreign_key "r_organizacionais", "r_tipos_organizacionais"
end
