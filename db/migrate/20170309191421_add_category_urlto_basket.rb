class AddCategoryUrltoBasket < ActiveRecord::Migration[5.0]
  def change
    add_column :baskets, :category_url, :string
  end
end
