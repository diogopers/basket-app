class ChangeTypeToCategoryOnBaskets < ActiveRecord::Migration[5.0]
  def change
    rename_column :baskets, :type, :category
  end
end
