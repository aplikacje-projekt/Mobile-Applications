class AddPrecisionToPrice < ActiveRecord::Migration[5.1]
    def self.up
      change_column :refuellings, :total_price, :decimal, :precision => 7, :scale => 2
      change_column :petrol_stations, :pb95_price, :decimal, :precision => 7, :scale => 2
      change_column :petrol_stations, :pb98_price, :decimal, :precision => 7, :scale => 2
      change_column :petrol_stations, :on_price, :decimal, :precision => 7, :scale => 2
      change_column :petrol_stations, :gas_price, :decimal, :precision => 7, :scale => 2
    end
    def self.down
      change_column :refuellings, :total_price
      change_column :petrol_stations, :pb95_price
      change_column :petrol_stations, :pb98_price
      change_column :petrol_stations, :on_price
      change_column :petrol_stations, :gas_price
    end
end
