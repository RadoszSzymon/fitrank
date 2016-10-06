class Gym < ActiveRecord::Base
  acts_as_votable

  geocoded_by :address
  after_validation :geocode

end
