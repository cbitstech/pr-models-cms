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

ActiveRecord::Schema.define(version: 20140711164118) do

  create_table "trees", force: true do |t|
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pr_id"
    t.string   "model_type"
    t.string   "parser"
    t.string   "note"
    t.integer  "tree_amount"
    t.float    "accuracy"
    t.string   "tree_file_file_name"
    t.string   "tree_file_content_type"
    t.integer  "tree_file_file_size"
    t.datetime "tree_file_updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.string   "model"
  end

end
