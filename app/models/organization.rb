class Organization < ApplicationRecord
  has_many :users
  has_many :clients
  has_many :facilities, through: :clients

end
