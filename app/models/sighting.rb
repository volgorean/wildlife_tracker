class Sighting < ActiveRecord::Base
  validates :date, :presence => true
  validates :time, :presence => true
  validates :locaton, :presence => true
  belongs_to :species
  has_one :reigon
end
