class AddSizeUrlToBaskets < ActiveRecord::Migration[5.0]
  def change
    add_column :baskets, :size_url, :string
  end
end
