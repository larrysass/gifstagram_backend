class User < ApplicationRecord
    has_secure_password

    has_many :likes 
    has_many :gifs, through: :likes
    has_many :comments
    has_many :gifs, through: :comments
end
