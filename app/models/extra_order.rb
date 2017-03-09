class ExtraOrder < ApplicationRecord
  attr_accessor :action_cart

  belongs_to :order
  belongs_to :extra

end
