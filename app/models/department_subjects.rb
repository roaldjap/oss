class DepartmentsSubjects < ActiveRecord::Base
belongs_to :department
belongs_to :subject
end