class Client < ApplicationRecord
  belongs_to :facility
  belongs_to :organization
  has_many :sentences

  # Validations

end
