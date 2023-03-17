class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :physical_address, :physical_city, :physical_state, :physical_zip, :phone_number, :mailing_address, :mailing_city, :mailing_state, :mailing_zip, :ein, :valid_non_profit
end
