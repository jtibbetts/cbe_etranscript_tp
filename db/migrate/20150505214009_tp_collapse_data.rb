class TpCollapseData < ActiveRecord::Migration
  def up
    create_table "iresources", force: true do |t|
      t.integer  "tenant_id"
      t.string   "result_uri"
      t.string   "userid"
      t.string   "contextid"
      t.float    "score",      limit: 24
      t.datetime "created_at",            null: false
      t.datetime "updated_at",            null: false
    end

    create_table "tenant_users", force: true do |t|
      t.integer  "tenant_id"
      t.string   "user_id"
      t.string   "first_name"
      t.string   "last_name"
      t.string   "email"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "tenants", force: true do |t|
      t.string   "tenant_key"
      t.text     "secret"
      t.string   "tenant_name"
      t.datetime "created_at",  null: false
      t.datetime "updated_at",  null: false
    end
  end
end
