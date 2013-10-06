class Subject < ActiveRecord::Base
	has_many :departments_subjects
	has_many :departments, :through => :departments_subjects
end
