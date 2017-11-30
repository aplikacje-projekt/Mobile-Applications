class CreatePetrolStations < ActiveRecord::Migration[5.1]
  def change
    create_table :petrol_stations do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :postal_code
      t.decimal :pb95_price
      t.decimal :pb98_price
      t.decimal :on_price
      t.decimal :gas_price
      t.integer :likes
      t.integer :unlikes

      t.timestamps
    end
  end
end
