class AddRideIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :ride_id, :integer
    add_foreign_key :users, :rides
  end
end
