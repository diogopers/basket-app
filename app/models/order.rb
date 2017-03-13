class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :basket
  belongs_to :delivery_point, optional: true

  has_many :extra_orders

end
