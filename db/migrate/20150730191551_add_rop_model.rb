class AddRopModel < ActiveRecord::Migration
  def up
    create_table "record_of_performances", force: true do |t|
      t.string   "rop_id", limit: 191
      t.datetime "extracted_at"
      t.string   "product_name"
      t.string   "service_provider_name"
      t.string   "first_name"
      t.string   "last_name"
      t.string   "organization_name"
      t.string   "program_name"
      t.text     "rop_json"

      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
    add_index :record_of_performances, :rop_id, unique: true
  end
  def down
    drop_table "record_of_performances"
  end
end
