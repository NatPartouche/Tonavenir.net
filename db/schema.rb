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

ActiveRecord::Schema.define(:version => 20120921131519) do

  create_table "article_presses", :force => true do |t|
    t.string   "titre"
    t.string   "journal"
    t.string   "date"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "banieres", :force => true do |t|
    t.string   "titre"
    t.string   "description"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "concours", :force => true do |t|
    t.string   "titre"
    t.string   "soustitre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "devenir_franchises", :force => true do |t|
    t.string   "prenom"
    t.string   "nom"
    t.string   "ville"
    t.string   "departement"
    t.string   "tel"
    t.string   "message"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "etapes", :force => true do |t|
    t.string   "titre"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "franchises", :force => true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.text     "description"
    t.string   "adresse"
    t.string   "mail"
    t.string   "telefix"
    t.string   "telmob"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "inscriptionprepaconcours", :force => true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "mail"
    t.string   "telephone"
    t.string   "sectionbac"
    t.string   "concoursenvisages"
    t.string   "message"
    t.string   "prepaconcoursid"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "packs", :force => true do |t|
    t.string   "titre"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "prepaconcoursecoles", :force => true do |t|
    t.string   "titre"
    t.string   "soustitre"
    t.string   "heure"
    t.string   "description"
    t.string   "prix"
    t.string   "franchiseid"
    t.string   "concoursid"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "presses", :force => true do |t|
    t.string   "titre"
    t.string   "journal"
    t.string   "date"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "temoignages", :force => true do |t|
    t.string   "nom"
    t.string   "prenom"
    t.string   "fbid"
    t.string   "message"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tests", :force => true do |t|
    t.string   "info"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
