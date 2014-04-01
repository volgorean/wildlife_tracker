class Region < ActiveRecord::Base
  validates :name, :presence => true
  belongs_to :sighting
end
