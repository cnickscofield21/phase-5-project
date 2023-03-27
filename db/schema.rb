# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_03_27_040332) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "middle_initial"
    t.integer "age"
    t.string "ethnicity"
    t.string "gender"
    t.string "hair_color"
    t.string "eye_color"
    t.string "height"
    t.string "weight"
    t.integer "doc_number"
    t.date "est_parole_eligibility_date"
    t.date "next_parole_hearing_date"
    t.date "est_mandatory_release_date"
    t.date "est_sentence_discharge_date"
    t.string "image"
    t.bigint "facility_id", null: false
    t.bigint "organization_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_id"], name: "index_clients_on_facility_id"
    t.index ["organization_id"], name: "index_clients_on_organization_id"
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.string "acronymn"
    t.string "facility_group"
    t.string "physical_address"
    t.string "physical_city"
    t.string "physical_state"
    t.string "physical_zip"
    t.string "phone_number"
    t.string "mailing_address"
    t.string "mailing_city"
    t.string "mailing_state"
    t.string "mailing_zip"
    t.integer "security_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "physical_address"
    t.string "physical_city"
    t.string "physical_state"
    t.string "physical_zip"
    t.string "phone_number"
    t.string "mailing_address"
    t.string "mailing_city"
    t.string "mailing_state"
    t.string "mailing_zip"
    t.string "ein"
    t.boolean "valid_non_profit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sentences", force: :cascade do |t|
    t.date "sentence_date"
    t.string "sentence"
    t.string "county"
    t.string "case_number"
    t.bigint "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_sentences_on_client_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.boolean "organization_admin"
    t.bigint "organization_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_users_on_organization_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "clients", "facilities"
  add_foreign_key "clients", "organizations"
  add_foreign_key "sentences", "clients"
  add_foreign_key "users", "organizations"
end
