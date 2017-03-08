class ExtraOrder < ApplicationRecord
  belongs_to :order
  belongs_to :extra

end
