class ClientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :middle_initial, :age, :ethnicity, :gender, :hair_color, :eye_color, :height, :weight, :doc_number, :est_parole_eligibility_date, :next_parole_hearing_date, :est_mandatory_release_date, :est_sentence_discharge_date, :image
  has_one :facility
  has_one :organization
end
