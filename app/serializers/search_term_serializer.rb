class SearchTermSerializer < ActiveModel::Serializer
  attributes :id, :search, :type, :created_at, :visited_pages
  has_one :user
  has_many :visited_pages
end
