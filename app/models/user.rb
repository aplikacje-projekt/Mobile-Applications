class User < ApplicationRecord
  has_secure_password

  has_many :cars
  has_and_belongs_to_many :petrol_stations

  validates :nickname, :presence => true, :length => { :within => 1..20 },
    uniqueness: true
  validates :password, :presence => true, :length => { :within => 6..40 }
  validates :mail, :presence => true, email: { strict_mode: true },
    uniqueness: true
end
