class InstrumentSerializer < ActiveModel::Serializer
  attributes :id, :brand, :type, :condition, :year, :picture_url, :price, :user_id
end
