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

ActiveRecord::Schema.define(version: 20180103160214) do

  create_table "albums", force: :cascade do |t|
    t.string  "name"
    t.integer "artist_id"
    t.string  "url"
    t.integer "play_count"
    t.string  "api_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "api_id"
  end

  create_table "playlist_song_relationships", force: :cascade do |t|
    t.integer "playlist_id"
    t.integer "song_id"
  end

  create_table "playlists", force: :cascade do |t|
    t.string  "name"
    t.integer "user_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string  "name"
    t.integer "album_id"
    t.string  "url"
    t.integer "play_count"
    t.integer "listeners"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
  end

end