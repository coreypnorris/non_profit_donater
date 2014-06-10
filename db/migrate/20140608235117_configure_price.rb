class ConfigurePrice < ActiveRecord::Migration
  def change
    change_column :donations, :price, :decimal, :precision => 8, :scale => 2
  end
end
