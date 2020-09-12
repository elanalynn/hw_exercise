class RemoveCarrierIdFromCarriers < ActiveRecord::Migration[6.0]
  def change
    remove_column :carriers, :carrier_id, :integer
  end
end
