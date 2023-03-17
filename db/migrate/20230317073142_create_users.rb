class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.boolean :organization_admin
      t.belongs_to :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
