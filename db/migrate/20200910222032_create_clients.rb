class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.integer :client_id
      t.string :client_name
      t.string :address
      t.string :city
      t.string :state
      t.string :division
      t.integer :major_group
      t.integer :industry_group
      t.integer :sic
      t.string :description

      t.timestamps
    end
  end
end
