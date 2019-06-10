class SearchTerm < ApplicationRecord
  belongs_to :user
  has_many :visited_pages
end
