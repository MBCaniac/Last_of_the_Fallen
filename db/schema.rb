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

ActiveRecord::Schema[7.0].define(version: 2022_02_18_211302) do
  create_table "equips", force: :cascade do |t|
    t.string "helm"
    t.string "armor"
    t.string "accessory"
    t.string "weapon"
    t.integer "unit_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_equips_on_unit_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.string "classtype"
    t.string "gender"
    t.integer "char_lvl"
    t.integer "char_xp"
    t.integer "char_hp"
    t.integer "char_tp"
    t.integer "char_def"
    t.integer "char_eva"
    t.integer "char_atp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "equips", "units"
end
