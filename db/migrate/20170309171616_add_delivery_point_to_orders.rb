class AddDeliveryPointToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :delivery_point, :string
  end
end
