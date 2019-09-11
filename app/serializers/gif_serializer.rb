# class GifSerializer < ActiveModel::Serializer
#   attributes :id, :likes, :users
#   has_many :likes
#   has_many :users, through: :likes
#   accepts_nested_attributes_for :likes, :allow_destroy => true
# end
