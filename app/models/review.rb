class Review < ApplicationRecord
  belongs_to :product, optional: true
  validates :author, presence: true
  validates :content_body, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to:1, less_than_or_equal_to:5  }
  validates_length_of :content_body, maximum: 250
  validates_length_of :content_body, minimum: 50
end