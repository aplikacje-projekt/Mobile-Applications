class Refuelling < ApplicationRecord
  belongs_to :car
  has_one :petrol_station
end
