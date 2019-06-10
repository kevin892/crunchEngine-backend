class User < ApplicationRecord
  has_secure_password
  has_many :gifs
  has_many :search_terms, -> { order(id: :desc) }
  has_many :visited_pages, through: :search_terms
end
