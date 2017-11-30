class AddDefaultValues < ActiveRecord::Migration[5.1]
  def self.up
    change_column :users, :is_admin, :boolean, :default => false
    change_column :petrol_stations, :likes, :integer, :default => 0
    change_column :petrol_stations, :unlikes, :integer, :default => 0
  end
  def self.down
    change_column :users, :is_admin, :boolean
    change_column :petrol_stations, :likes, :integer
    change_column :petrol_stations, :unlikes, :integer
  end
end
