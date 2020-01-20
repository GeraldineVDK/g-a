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

ActiveRecord::Schema.define(version: 2020_01_20_120812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.string "email"
    t.string "phone"
    t.string "service"
    t.text "additional_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "devis", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "telephone"
    t.string "email"
    t.string "building_address"
    t.integer "nr_de_passages"
    t.integer "nr_d_heures"
    t.boolean "cahier_de_charges"
    t.string "service_demande"
    t.date "date_rdv"
    t.date "date_debut_souhaitee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
