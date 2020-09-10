class CreateCarriers < ActiveRecord::Migration[6.0]
  def change
    create_table :carriers do |t|
      t.integer :carrier_id
      t.string :company_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :postal_code

      t.timestamps
    end
  end
end
