class Review < ApplicationRecord
  belongs_to :product
  validates :author, :content_body, :rating, presence: true
  validates :rating, numericality: { only_integer: true , :less_than_or_equal_to => 5 }
end