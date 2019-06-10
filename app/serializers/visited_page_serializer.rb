class VisitedPageSerializer < ActiveModel::Serializer
  attributes :id, :url
  has_one :search_term
end
