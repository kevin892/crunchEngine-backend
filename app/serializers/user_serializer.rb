class UserSerializer < ActiveModel::Serializer
  attributes :id
  has_many :gifs
  has_many :search_terms
end
