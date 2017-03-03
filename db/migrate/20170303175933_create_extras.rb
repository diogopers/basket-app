class CreateExtras < ActiveRecord::Migration[5.0]
  def change
    create_table :extras do |t|
      t.string :photo
      t.string :name
      t.float :price
      t.string :info
      t.references :producer, foreign_key: true
      t.string :category

      t.timestamps
    end
  end
end
