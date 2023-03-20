class Facility < ApplicationRecord
  has_many :clients
  has_many :organizations, through: :clients

  # Validations
  validates :name, length: { in: 2..55 }
  validates :physical_address, presence: true
  validates :physical_city, presence: true
  validates :physical_state, presence: true, length: { is: 2 }
  validates :physical_zip, length: { in: 5..10 }
  validates :phone_number, presence: true, length: { in: 10..12 }
  validates :mailing_address, presence: true
  validates :mailing_city, presence: true
  validates :mailing_state, presence: true
  validates :mailing_zip, length: { in: 5..10 }
  validates :security_level, numericality: { in: 0..5 }

end