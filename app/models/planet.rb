class Planet < ActiveRecord::Base
  attr_accessible :mass, :moons, :name, :orbit, :period, :rings, :planet_type

  #instead of lambda, could use " -> " (called a stabby croc)
  scope :potentially_habitable, lambda { where(orbit: (0.8..1.4)).where(planet_type: 'm') }

end
