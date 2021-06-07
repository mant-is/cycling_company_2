class AddRideIdToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :ride_id, :integer
    add_foreign_key :comments, :rides
  end
end
