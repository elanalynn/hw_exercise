class AddCarrierToPolicy < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :policies, :carriers
  end
end
