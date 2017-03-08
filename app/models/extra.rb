class Extra < ApplicationRecord
  belongs_to :producer
  has_many :extra_orders

  mount_uploader :photo, PhotoUploader


end
