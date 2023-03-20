class User < ApplicationRecord
  belongs_to :organization
  has_secure_password

  # Validations
  validates :first_name, presence: true, length: { in: 2..20 }
  validates :last_name, presence: true, length: { in: 2..32 }
  validates :email, presence: true, length: { in: 8..40 }
  validates :organization_admin, presence: true

end
