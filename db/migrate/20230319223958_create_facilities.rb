class CreateFacilities < ActiveRecord::Migration[7.0]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :acronymn
      t.string :facility_group
      t.string :physical_address
      t.string :physical_city
      t.string :physical_state
      t.string :physical_zip
      t.string :phone_number
      t.string :mailing_address
      t.string :mailing_city
      t.string :mailing_state
      t.string :mailing_zip
      t.integer :security_level

      t.timestamps
    end
  end
end
