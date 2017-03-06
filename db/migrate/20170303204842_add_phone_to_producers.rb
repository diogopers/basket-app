class AddPhoneToProducers < ActiveRecord::Migration[5.0]
  def change
    add_column :producers, :phone, :string
  end
end
