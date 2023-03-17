class Facility < ApplicationRecord
  has_many :clients
  has_many :organizations, through: :clients

end
