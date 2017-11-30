class PetrolStation < ApplicationRecord
  has_many :refuellings
  has_and_belongs_to_many :users
end
