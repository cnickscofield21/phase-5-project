class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :first_name, :last_name, :organization_admin
  has_one :organization
end
