class AddAmountToOrder < ActiveRecord::Migration[5.0]
  def change
    add_monetize :orders, :amount, currency: { present: false }
  end
end
