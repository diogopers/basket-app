class CreateExtraOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :extra_orders do |t|
      t.references :order, foreign_key: true
      t.references :extra, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
