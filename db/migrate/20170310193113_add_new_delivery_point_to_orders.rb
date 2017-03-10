class AddNewDeliveryPointToOrders < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :delivery_point, foreign_key: true
  end
end
