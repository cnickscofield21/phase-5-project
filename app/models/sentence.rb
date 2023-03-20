class Sentence < ApplicationRecord
  belongs_to :client

  # Validates
  validates :sentence_date, presence: true
  validates :sentence, presence: true
  validates :county, presence: true
  validates :case_number, presence: true

end