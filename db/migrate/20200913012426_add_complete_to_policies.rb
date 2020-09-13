class AddCompleteToPolicies < ActiveRecord::Migration[6.0]
  def change
    add_column :policies, :complete, :boolean
  end
end
