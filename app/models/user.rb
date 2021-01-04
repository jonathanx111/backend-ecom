class User < ApplicationRecord
    has_many :instruments, dependent: :destroy
    has_many :listings, through: :instruments
    has_many :purchases, class_name: "Listing", foreign_key: "user_id"
end
