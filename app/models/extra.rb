class Extra < ApplicationRecord
  belongs_to :producer
  has_many :extra_orders

  monetize :price_cents  # or :price_pennies

  mount_uploader :photo, PhotoUploader

  def self.search(params)

    if params[:ingredients] || params[:beverages] || params[:dairy] || params[:bakery]
      results = []

      results << where(category: 'ingredients') if params[:ingredients]
      results << where(category: 'beverages') if params[:beverages]
      results << where(category: 'dairy') if params[:dairy]
      results << where(category: 'bakery') if params[:bakery]

      results.inject(&:+)
    else
      all
    end
  end

end
