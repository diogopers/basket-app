class RemovePriceFromBaskets < ActiveRecord::Migration[5.0]
  def change
    remove_column :baskets, :price, :integer
  end
end
