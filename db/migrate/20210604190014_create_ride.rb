class CreateRide < ActiveRecord::Migration[6.1]
  def change
    create_table :rides do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.date :date

      t.timestamps
    end
  end
end
