class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :basket

  has_many :extra_orders

end
