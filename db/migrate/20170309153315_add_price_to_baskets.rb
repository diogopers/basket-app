class AddPriceToBaskets < ActiveRecord::Migration[5.0]
  def change
    add_monetize :baskets, :price, currency: { present: false }
  end
end
