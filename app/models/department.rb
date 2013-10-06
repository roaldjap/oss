class Department < ActiveRecord::Base
	has_many :departments_subjects
	has_many :subjects, :through => :departments_subjects
end
