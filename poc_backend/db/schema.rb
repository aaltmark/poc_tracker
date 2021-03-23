# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_22_225638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "notes", force: :cascade do |t|
    t.string "details"
  end

  create_table "opportunities", force: :cascade do |t|
    t.string "account_name"
    t.string "account_executive"
    t.string "business_type"
    t.integer "network_id"
    t.string "url"
    t.string "tag_implementation_method"
    t.boolean "noJS"
    t.integer "average_daily_clicks"
  end

  create_table "platforms", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  create_table "stages", force: :cascade do |t|
    t.string "name"
  end

end
