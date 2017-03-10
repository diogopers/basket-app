class RemoveDeliveryPointFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :delivery_point, :string
  end
end
