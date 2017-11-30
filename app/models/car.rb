class Car < ApplicationRecord
  belongs_to :user
  has_many :refuellings

  validates :name, :presence => true, :length => { :within => 1..20 }
  validates :description, :length => { maximum: 200 }
  validates :brand, :length => { maximum: 20 }
  validates :model, :length => { maximum: 20 }
  validates :mileage, :allow_blank => true,
    :numericality => { :greater_than_or_equal => 0.0 }
  validates :registration_number,
    :allow_blank => true, length: { :within => 6..7 }
  validates :fuel_type, :inclusion => { :in => %w(PB_95 PB_98 ON GAS)}
end
