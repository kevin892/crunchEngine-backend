class GifSerializer < ActiveModel::Serializer
  attributes :id, :url
  has_one :user
end
