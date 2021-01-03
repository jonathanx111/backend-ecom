class User < ApplicationRecord
    has_many :instruments, dependent: :destroy
end
