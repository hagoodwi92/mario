class Product < ApplicationRecord
  # scope :three_most_recent, -> { order(created_at: :desc).limit(3)}
  def self.three_most_recent
    order(created_at: :desc).limit(3)
  end

  scope :most_reviews, -> {(
    select("products.id, products.name, products.role, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(1)
    )}
  
  has_many :reviews
  validates :name, presence: true
  validates :cost, presence: true
  validates :country_of_origin, presence: true
  validates :cost, numericality: { only_integer: true}

  before_save(:titleize_product)
  
  private
  def titleize_product
    self.name = self.name.titleize
  end
end