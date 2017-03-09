class Extra < ApplicationRecord
  belongs_to :producer
  has_many :extra_orders

  monetize :price_cents  # or :price_pennies

  mount_uploader :photo, PhotoUploader


end
