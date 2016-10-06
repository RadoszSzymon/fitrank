class Gym < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :user

  acts_as_votable

  geocoded_by :address
  after_validation :geocode

end
