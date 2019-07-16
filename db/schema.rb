ActiveRecord::Schema.define(version: 2019_06_27_081836) do

  create_table "ads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "body"
    t.string "img"
    t.string "price"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.integer "imp"
    t.integer "click"
  end

  create_table "reports", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "imp"
    t.integer "click"
    t.float "ctr"
    t.integer "cpm"
    t.integer "totalcost"
    t.integer "ad_id"
    t.integer "adspot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false

  end


end
