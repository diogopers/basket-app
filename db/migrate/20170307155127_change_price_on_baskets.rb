class ChangePriceOnBaskets < ActiveRecord::Migration[5.0]
  def change
    change_column :baskets, :price, :integer
  end
end
