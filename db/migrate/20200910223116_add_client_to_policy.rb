class AddClientToPolicy < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :policies, :clients 
  end
end
