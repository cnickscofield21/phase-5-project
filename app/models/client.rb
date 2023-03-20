class Client < ApplicationRecord
  belongs_to :facility
  belongs_to :organization
  has_many :sentences, dependent: :destroy

  # Validations
  validates :first_name, presence: true, length: { in: 2..20 }
  validates :last_name, presence: true, length: { in: 2..32 }
  validates :age, presence: true, numericality: { in: 13..110 }
  validates :doc_number, uniqueness: true, numericality: { in: 1..300000 }
  validates :ethnicity, presence: true
  validates :gender, presence: true

end
