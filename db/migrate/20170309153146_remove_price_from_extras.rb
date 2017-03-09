class RemovePriceFromExtras < ActiveRecord::Migration[5.0]
  def change
    remove_column :extras, :price, :float
  end
end
