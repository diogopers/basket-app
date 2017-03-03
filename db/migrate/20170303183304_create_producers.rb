class CreateProducers < ActiveRecord::Migration[5.0]
  def change
    create_table :producers do |t|
      t.string :name
      t.string :photo
      t.string :bio
      t.string :city

      t.timestamps
    end
  end
end
