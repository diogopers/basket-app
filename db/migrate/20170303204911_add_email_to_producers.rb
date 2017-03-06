class AddEmailToProducers < ActiveRecord::Migration[5.0]
  def change
    add_column :producers, :email, :string
  end
end
