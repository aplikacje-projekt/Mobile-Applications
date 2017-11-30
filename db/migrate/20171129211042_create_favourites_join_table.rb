class CreateFavouritesJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :petrol_stations do |t|
      t.index :user_id
      t.index :petrol_station_id
    end
  end
end
