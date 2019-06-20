class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true
  has_many :gifs
  has_many :search_terms, -> { order(id: :desc) }
  has_many :visited_pages, through: :search_terms
end
