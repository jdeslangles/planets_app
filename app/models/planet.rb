class Planet < ActiveRecord::Base
  attr_accessible :mass, :moons, :name, :orbit, :period, :rings, :planet_type
end
