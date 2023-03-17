class SentenceSerializer < ActiveModel::Serializer
  attributes :id, :sentence_date, :sentence, :county, :case_number
  has_one :client
end
