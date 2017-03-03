class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :basket, foreign_key: true
      t.float :total

      t.timestamps
    end
  end
end
