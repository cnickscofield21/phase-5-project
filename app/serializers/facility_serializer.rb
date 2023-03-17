class FacilitySerializer < ActiveModel::Serializer
  attributes :id, :name, :acronymn, :facility_group, :physical_address, :physical_city, :physical_state, :physical_zip, :phone_number, :mailing_address, :mailing_city, :mailing_state, :mailing_zip, :security_level
end
