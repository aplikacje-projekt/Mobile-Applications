class FavouritesController < ApplicationController
  def new
      @petrol_station = PetrolStation.find_by_id(params[:petrol_station_id])
      current_user.petrol_stations << @petrol_station
      update_likes(@petrol_station)
      redirect_to favourites_path
  end

  def favourites
  end

  def destroy
    @petrol_station = PetrolStation.find_by_id(params[:petrol_station_id])
    current_user.petrol_stations.delete(@petrol_station)
    update_likes(@petrol_station)
    redirect_to favourites_path
  end

  private

  def update_likes(petrol_station)
    petrol_station.likes = petrol_station.users.count
    petrol_station.save
  end
end
