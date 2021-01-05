class Listing < ApplicationRecord
    belongs_to :instrument 
    belongs_to :user, :foreign_key => "seller_id"
end
