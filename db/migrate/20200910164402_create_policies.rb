class CreatePolicies < ActiveRecord::Migration[6.0]
  def change
    create_table :policies do |t|
      t.string :type
      t.string :division
      t.integer :carrier_id
      t.integer :client_id
      t.datetime :effective_date
      t.datetime :expiration_date
      t.float :written_premium
      t.integer :carrier_policy_number

      t.timestamps
    end
  end
end
