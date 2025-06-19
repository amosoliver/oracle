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

ActiveRecord::Schema[7.2].define(version: 2025_06_19_131619) do
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

  create_table "i_ambientes_prediais", force: :cascade do |t|exit
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

  add_foreign_key "g_estados", "g_paises"
  add_foreign_key "g_municipios", "g_estados"
  add_foreign_key "i_ambientes_prediais", "i_predios"
  add_foreign_key "i_predios", "g_municipios"
end
