class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_initial
      t.integer :age
      t.string :ethnicity
      t.string :gender
      t.string :hair_color
      t.string :eye_color
      t.string :height
      t.string :weight
      t.integer :doc_number
      t.date :est_parole_eligibility_date
      t.date :next_parole_hearing_date
      t.date :est_mandatory_release_date
      t.date :est_sentence_discharge_date
      t.string :image
      t.belongs_to :facility, null: false, foreign_key: true
      t.belongs_to :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
