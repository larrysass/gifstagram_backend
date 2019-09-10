class Gif < ApplicationRecord
    has_many :likes 
    has_many :users, through: :likes
    has_many :comments
    has_many :users, through: :comments
end
