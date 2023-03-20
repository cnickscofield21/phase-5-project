class Organization < ApplicationRecord
  has_many :clients, dependent: :destroy # Not super happy about this solution
  has_many :facilities, through: :clients
  has_many :users, dependent: :destroy

  # Validations
  validates :name, length: { in: 2..55 }
  validates :phone_number, presence: true, length: { in: 10..12 }
  validates :mailing_address, presence: true
  validates :mailing_city, presence: true
  validates :mailing_state, presence: true
  validates :mailing_zip, length: { in: 5..10 }
  validates :ein, length: { in: 9..10 }
  validates :valid_non_profit, presence: true

end