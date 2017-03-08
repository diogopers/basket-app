class CreateDeliveryPoints < ActiveRecord::Migration[5.0]
  def change
    create_table :delivery_points do |t|
      t.string :address
      t.string :name
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
