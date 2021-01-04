class InstrumentSerializer < ActiveModel::Serializer
  attributes :id, :brand, :type_of, :condition, :year, :picture_url, :price, :user_id, :model
end
