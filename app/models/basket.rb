class Basket < ApplicationRecord
  monetize :price_cents  # or :price_pennies

  CATEGORIES = %w(vegetables fruits both)
  SIZES = %w(small medium large)

  validates :category, inclusion: { in: CATEGORIES }, presence: true
  validates :size, inclusion: { in: SIZES }, presence: true

  has_many :orders

end
