class Schedule < ActiveRecord::Base
  belongs_to :day
  belongs_to :timeslot
  has_many :subjsect

before_save :dayslot_name



end