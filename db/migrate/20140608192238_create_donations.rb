class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string "name"
      t.decimal "price"

      t.timestamps
    end
  end
end
