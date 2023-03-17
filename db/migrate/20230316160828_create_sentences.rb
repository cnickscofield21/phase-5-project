class CreateSentences < ActiveRecord::Migration[7.0]
  def change
    create_table :sentences do |t|
      t.date :sentence_date
      t.string :sentence
      t.string :county
      t.string :case_number
      t.belongs_to :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
