class ListingSerializer < ActiveModel::Serializer
  attributes :id, :buyer_id, :seller_id, :instrument_id, :datetime_sold, :created_at
end
