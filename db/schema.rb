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

ActiveRecord::Schema.define(version: 20160113203526) do

  create_table "genes", force: :cascade do |t|
    t.string   "species"
    t.string   "number"
    t.string   "name"
    t.string   "size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ligations", force: :cascade do |t|
    t.integer  "pcr_id"
    t.float    "insert_q"
    t.string   "vector"
    t.float    "vector_q"
    t.string   "ligase"
    t.integer  "temp"
    t.string   "during"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.text     "gene_name"
    t.string   "f_primer"
    t.string   "r_primer"
    t.string   "f_primer_sq"
    t.string   "r_primer_sq"
    t.string   "f_re"
    t.string   "r_re"
    t.string   "final_vector"
    t.string   "product_size"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pcrs", force: :cascade do |t|
    t.integer  "gene_id"
    t.string   "fragment_name"
    t.integer  "product_size"
    t.string   "final_vector"
    t.string   "fuse"
    t.string   "machine"
    t.string   "enzyme"
    t.integer  "break"
    t.integer  "denature"
    t.integer  "annealing"
    t.integer  "elongation"
    t.integer  "polya"
    t.integer  "cycles"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "plates", force: :cascade do |t|
    t.string   "antibiotic"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "primer_pcrships", force: :cascade do |t|
    t.integer  "pcr_id"
    t.integer  "primer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "primers", force: :cascade do |t|
    t.string   "f_or_r"
    t.integer  "length"
    t.string   "re"
    t.string   "string"
    t.float    "tm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transformations", force: :cascade do |t|
    t.integer  "ligation_id"
    t.string   "bac"
    t.integer  "ice_time"
    t.integer  "liq_nitrogen"
    t.integer  "heat_time"
    t.integer  "recovery_time"
    t.integer  "plate_id"
    t.integer  "incubate"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
