class Subjsect < ActiveRecord::Base
  belongs_to :section
  belongs_to :subject
  belongs_to :room
  belongs_to :schedule





end