class AddPriceToExtras < ActiveRecord::Migration[5.0]
  def change
    add_monetize :extras, :price, currency: { present: false }
  end
end
