# class UserSerializer < ActiveModel::Serializer
#   attributes :id, :likes, :gifs
#   has_many :likes
#   has_many :gifs, through: :likes
#   accepts_nested_attributes_for :likes, :allow_destroy => true
# end
