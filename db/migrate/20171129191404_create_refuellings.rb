class CreateRefuellings < ActiveRecord::Migration[5.1]
  def change
    create_table :refuellings do |t|
      t.integer :car_id
      t.integer :petrol_station_id
      t.string :description
      t.decimal :total_price
      t.float :liters
      t.float :mileage
      t.datetime :date_time

      t.timestamps
    end
  end
end
    
