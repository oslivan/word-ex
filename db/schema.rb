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

ActiveRecord::Schema.define(version: 20170222013714) do

  create_table "word_srcs", force: :cascade do |t|
    t.string   "name"
    t.string   "create_person"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "words", force: :cascade do |t|
    t.string   "name"
    t.text     "translation"
    t.string   "phonetic"
    t.text     "sentence"
    t.integer  "error_count"
    t.integer  "try_count"
    t.float    "difficult_coefficient"
    t.integer  "word_src_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["word_src_id"], name: "index_words_on_word_src_id"
  end

end
